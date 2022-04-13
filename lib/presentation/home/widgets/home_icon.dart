import 'package:flutter/material.dart';

Widget buildHomeIcon(String icon) {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.grey.shade400,
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      "assets/icons/$icon.png",
      height: 28,
      width: 28,
    ),
  );
}
