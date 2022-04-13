import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class BottomNavBar extends HookWidget {
  BottomNavBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function(int) onTap;

  final _currentIndex = useState<int>(0);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex.value,
      onTap: (i) {
        _currentIndex.value = i;
        onTap(i);
      },
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Accueil"),
          selectedColor: kPrimaryColor,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.car_rental),
          title: Text("Réservations"),
          selectedColor: kPrimaryColor,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.notifications),
          title: Text("Notifications"),
          selectedColor: kPrimaryColor,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.help),
          title: Text("Aide"),
          selectedColor: kPrimaryColor,
        ),
      ],
    );
    ;
  }
}
