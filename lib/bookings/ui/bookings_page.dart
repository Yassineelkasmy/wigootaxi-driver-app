import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/application/providers/booking_provider.dart';
import 'package:wigootaxidriver/bookings/application/booking_event.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class BookingsPage extends HookConsumerWidget {
  BookingsPage({
    Key? key,
    this.fromBooking = false,
  }) : super(key: key);
  bool fromBooking;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (fromBooking) {
      fromBooking = false;
    }
    final bookingController = ref.watch(bookingProvider.notifier);
    final bookingState = ref.watch(bookingProvider);
    final user = ref.watch(userProvider);

    if (bookingState.bookings.isEmpty) {
      bookingController.mapEventToState(
        BookingEvent.bookingsRequested(user!.uid),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes courses'),
      ),
      body: Padding(
        padding: kPadding,
        child: ListView(
          children: bookingState.bookings
              .map(
                (booking) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        iconColor: kPrimaryColor,
                        title: Text(
                          booking.start_name,
                        ),
                        subtitle: Text(booking.disttext),
                        leading: Icon(CupertinoIcons.person),
                        isThreeLine: true,
                        trailing: Text(
                          booking.durtext,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      2.h.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.h,
                          horizontal: 10.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                child: SubmitButton(
                              onPressed: () async {
                                final result = await showOkCancelAlertDialog(
                                  context: context,
                                  message:
                                      'Êtes-vous sûr de vouloir accepter cette course',
                                  title: 'Confirmation',
                                  okLabel: 'Oui',
                                  cancelLabel: 'Non',
                                );
                                if (result.index == 0) {
                                  // status.value = 'accepter';
                                }
                              },
                              text: 'Accepter',
                              color: Colors.green,
                            )),
                            5.w.horizontalSpace,
                            Expanded(
                                child: SubmitButton(
                              onPressed: () async {
                                final result = await showOkCancelAlertDialog(
                                  context: context,
                                  message:
                                      'Êtes-vous sûr de vouloir refuser cette course',
                                  title: 'Confirmation',
                                  okLabel: 'Oui',
                                  cancelLabel: 'Non',
                                );
                                if (result.index == 0) {
                                  // status.value = 'accepter';
                                }
                              },
                              text: 'Refuser',
                              color: Colors.red,
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
