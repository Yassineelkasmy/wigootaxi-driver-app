import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/ride/application/ride_event.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';

class RideActions extends HookConsumerWidget {
  RideActions({Key? key}) : super(key: key);
  bool countDownStarted = false;

  Duration rideDuration = Duration(seconds: 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showCountDown = useState(false);
    final endTime = useState<int>(100);
    ref.listen<RideState>(
      rideProvider,
      (previous, next) {
        if (next.driverArrived) {
          if (!countDownStarted) {
            countDownStarted = true;
            endTime.value = 60 * 3;
            showCountDown.value = true;
          }
        }
      },
    );
    final ride = ref.watch(
      rideProvider.select((value) => value.currentRide!),
    );

    final distanceTravelled = ref.watch(
      rideProvider.select((value) => value.distanceTravelled),
    );
    final driverArrived = ref.watch(
      rideProvider.select((value) => value.driverArrived),
    );

    final rideStarted = ref.watch(
      rideProvider.select((value) => value.rideStarted),
    );

    final rideFinished = ref.watch(
      rideProvider.select((value) => value.rideFinished),
    );

    final driverArrivedToDestination = ref.watch(
      rideProvider.select((value) => value.driverArrivedToDestination),
    );

    final driverCanCancell = ref.watch(
      rideProvider.select((value) => value.driverCanCncell),
    );

    final driverDistanceFromStart = ref.watch(
      rideProvider.select((value) => value.driverDistanceFromStart),
    );
    final rideController = ref.read(rideProvider.notifier);

    return Column(
      children: [
        if (!rideStarted) ...[
          if (driverArrived)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SubmitButton(
                    onPressed: () {
                      rideController.mapEventToState(RideEvent.rideStarted());
                    },
                    text: 'Commencer',
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          5.h.verticalSpace,
          if (driverArrived && !driverCanCancell) ...[
            Countdown(
              onFinished: () {
                showCountDown.value = false;
                rideController
                    .mapEventToState(RideEvent.driverCancellTimeOff());
              },
              seconds: endTime.value,
              build: (context, second) {
                final seconds = second.toInt();
                final duration = Duration(seconds: seconds);
                rideDuration = duration;
                return SizedBox(
                  width: double.maxFinite,
                  child: SubmitButton(
                    color: Colors.grey,
                    onPressed: () {},
                    text:
                        'Annulez librement dans ${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}',
                  ),
                );
              },
            ),
            5.h.verticalSpace,
          ],
          if (driverArrived && driverCanCancell)
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                onPressed: () {
                  showOkCancelAlertDialog(
                    context: context,
                    message: 'Voulez-vous vraiment annuler le trajet ?',
                    title: 'Confirmation',
                    okLabel: 'Oui',
                    cancelLabel: 'Non',
                  ).then((okCancell) {
                    if (okCancell.index == 0) {
                      rideController.mapEventToState(
                        RideEvent.rideCancelledByDriver(
                          beforeTimeOut: false,
                        ),
                      );
                    }
                  });
                },
                text: 'Annulez librement',
              ),
            ),
        ],
        if (rideStarted) ...[
          SizedBox(
            width: double.maxFinite,
            child: SubmitButton(
              color: Colors.green,
              onPressed: () {
                showOkCancelAlertDialog(
                  context: context,
                  message:
                      'Voulez-vous vraiment marquer le trajet comme terminé ?',
                  title: 'Confirmation',
                  okLabel: 'Oui',
                  cancelLabel: 'Non',
                ).then((okCancell) async {
                  if (okCancell.index == 0) {
                    await rideController.mapEventToState(RideEvent.rideFinished(
                      totalPrice: ((distanceTravelled / 1000) * 20),
                      totalDistance: distanceTravelled,
                      totalDuration: rideDuration,
                    ));
                    AutoRouter.of(context)
                        .replace(ActivateLocationOrMapPageRoute());

                    AutoRouter.of(context).push(
                      RideFinishedPageRoute(
                        startname: ride.start_name!,
                        destname: ride.start_name!,
                        totalPrice: ((distanceTravelled / 1000) * 20),
                        totalDistance: distanceTravelled,
                        totalDuration: rideDuration.inMinutes,
                      ),
                    );
                  }
                });
              },
              text: 'Marquer la fin du voyage',
            ),
          ),
          5.h.verticalSpace,
        ],
        if (!driverArrived && !rideStarted) ...[
          SizedBox(
            width: double.maxFinite,
            child: SubmitButton(
              color: Colors.green,
              onPressed: () {
                showOkCancelAlertDialog(
                  context: context,
                  message:
                      'Êtes-vous sûr de vouloir arriver au point de départ ?',
                  title: 'Confirmation',
                  okLabel: 'Oui',
                  cancelLabel: 'Non',
                ).then((okCancell) async {
                  if (okCancell.index == 0) {
                    rideController.mapEventToState(
                        RideEvent.driverArrived(ride, Duration(hours: 1)));
                  }
                });
              },
              text: "Arrivé au départ",
            ),
          ),
          5.h.verticalSpace,
        ],
        SizedBox(
          width: double.maxFinite,
          child: SubmitButton(
            color: Colors.red,
            onPressed: () {
              showOkCancelAlertDialog(
                context: context,
                message: 'Voulez-vous vraiment annuler le trajet ?',
                title: 'Confirmation',
                okLabel: 'Oui',
                cancelLabel: 'Non',
              ).then((okCancell) {
                if (okCancell.index == 0) {
                  Navigator.of(context).pop();

                  rideController.mapEventToState(
                    RideEvent.rideCancelledByDriver(
                      beforeTimeOut: driverCanCancell ? true : false,
                    ),
                  );
                }
              });
            },
            text: 'Anuller le trajet',
          ),
        )
      ],
    );
  }
}
