import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/domain/auth/user.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

SideDrawer buildSideDrawer(User user, WidgetRef ref, BuildContext context) {
  final autFormController = ref.watch(authFormProvider.notifier);
  return SideDrawer(
    percentage: 0.6,
    direction: Direction.left,
    animation: true,

    // alignment: Alignment.topLeft,
    color: kPrimaryColor,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
      height: 1.sh,
      width: 1.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: .15.sw,
                width: .15.sw,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage("user.photoURL"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bonjour,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "user.displayName",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          20.verticalSpace,
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            horizontalTitleGap: 10.w,
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.white,
            ),
            horizontalTitleGap: 10.w,
            title: Text(
              "Portefeuille",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.history_outlined,
              color: Colors.white,
            ),
            horizontalTitleGap: 10.w,
            title: Text(
              "Mes Courses",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            horizontalTitleGap: 10.w,
            title: Text(
              "Réglages",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              showOkCancelAlertDialog(
                context: context,
                message: 'Êtes-vous sûr de vouloir vous déconnecter',
                title: 'Confirmation',
                okLabel: 'Oui',
                cancelLabel: 'Non',
              ).then((okCancell) {
                if (okCancell.index == 0) {
                  autFormController
                      .mapEventToState(const AuthFormEvent.signOutPressed());
                }
              });
            },
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            horizontalTitleGap: 10.w,
            title: Text(
              "Se déconnecter",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
