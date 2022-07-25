import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/ride/application/ride_event.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';

class RideActions extends HookConsumerWidget {
  RideActions({Key? key}) : super(key: key);
  bool countDownStarted = false;

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
            endTime.value = 60;
            showCountDown.value = true;
          }
        }
      },
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (driverDistanceFromStart <= 40)
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
          if (driverArrived && !driverCanCancell)
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
          if (driverArrived && driverCanCancell)
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                onPressed: () {},
                text: 'Annulez librement',
              ),
            ),
        ],
        if (driverArrivedToDestination && rideStarted) ...[
          SizedBox(
            width: double.maxFinite,
            child: SubmitButton(
              color: Colors.green,
              onPressed: () {},
              text: 'Marquer la fin du voyage',
            ),
          ),
        ],
        5.h.verticalSpace,
        if (!driverArrivedToDestination)
          SizedBox(
            width: double.maxFinite,
            child: SubmitButton(
              color: Colors.red,
              onPressed: () {},
              text: 'Anuller le trajet',
            ),
          )
      ],
    );
  }
}
