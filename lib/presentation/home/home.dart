import 'package:auto_route/auto_route.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/home/widgets/app_bar.dart';
import 'package:wigootaxidriver/presentation/home/widgets/categories_list_view.dart';
import 'package:wigootaxidriver/presentation/home/widgets/home_button.dart';
import 'package:wigootaxidriver/presentation/home/widgets/home_icon.dart';
import 'package:wigootaxidriver/presentation/home/widgets/top_box.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';
import 'package:wigootaxidriver/prototype/users.dart';

class Home extends HookConsumerWidget {
  Home({
    Key? key,
    required this.drawerScaffoldController,
  }) : super(key: key);
  final DrawerScaffoldController drawerScaffoldController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      appBar: buildAppBar(
        menuPressed: () {
          drawerScaffoldController.openDrawer();
        },
        photoURL: user?.photoURL ?? protoUser.photoURL!,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTopBox(context, () {
                  AutoRouter.of(context).push(ActivateLocationPageRoute());
                }),
                20.verticalSpace,
                Row(
                  children: [
                    Text(
                      "OPTION",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                buildCategories(context),
                10.verticalSpace,
                Text(
                  "Commencez votre voyage",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          EnhanceStepper(
            currentStep: 0,
            stepIconSize: 36,
            controlsBuilder: (_, __) {
              return Row();
            },
            physics: ClampingScrollPhysics(),
            steps: [
              EnhanceStep(
                icon: buildHomeIcon('home_icon2'),
                title: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(ActivateLocationPageRoute());
                  },
                  child: Text(
                    "Choisissez Votre Point De Retrait",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  "Tanger, Val Flueri",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp,
                  ),
                ),
                content: SizedBox(),
              ),
              EnhanceStep(
                icon: buildHomeIcon('home_icon1'),
                title: Text(
                  "Choisissez Votre Destination",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Text('content'),
                subtitle: Text(
                  "Tanger, Val Flueri",
                  style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                ),
              ),
            ],
          ),
          Padding(
            padding: kPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Envoyer Ou Faire Une Demande De Credit',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16.sp,
                  ),
                ),
                10.verticalSpace,
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Row(
                    children: [
                      buildHomeIcon('home_icon5'),
                      10.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Partager Un Traget ?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "Envoyer Ou Demander De Credit",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildHomeButton(
                      text: "Envoyer un credit",
                      onPressed: () => {},
                    ),
                    buildHomeButton(
                      text: "Demander un credit",
                      onPressed: () => {},
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
