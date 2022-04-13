import 'package:auto_route/auto_route.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/auth/auth_state.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/home/help/help.dart';
import 'package:wigootaxidriver/presentation/home/home.dart';
import 'package:wigootaxidriver/presentation/home/notifications/notifications.dart';
import 'package:wigootaxidriver/presentation/home/reservation.dart';
import 'package:wigootaxidriver/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/prototype/users.dart';

import 'widgets/side_drawer.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    ref.listen<AuthState>(authtProvider, (_, authState) {
      authState.mapOrNull(
        unauthenticated: (unauth) {
          AutoRouter.of(context).popUntilRouteWithName(SplashPageRoute.name);
        },
      );
    });
    final _drawerScaffoldController = DrawerScaffoldController();

    final pages = [
      Home(
        drawerScaffoldController: _drawerScaffoldController,
      ),
      Reservation(),
      Notifications(),
      Help(),
    ];
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(animated: true);
        return false;
      },
      child: DrawerScaffold(
        controller: _drawerScaffoldController,
        drawers: [
          buildSideDrawer(user ?? protoUser, ref, context),
        ],
        bottomNavigationBar: BottomNavBar(
          onTap: (i) {
            pageController.animateToPage(
              i,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
        ),
        body: PageView(
          controller: pageController,
          children: pages,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
