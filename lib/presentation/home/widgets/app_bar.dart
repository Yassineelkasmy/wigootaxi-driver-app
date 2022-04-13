import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(
    {required void Function() menuPressed, required String photoURL}) {
  return AppBar(
    centerTitle: false,
    title: Text(
      'Bonjour !',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.transparent,
    leading: Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 32.h,
      width: 32.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(photoURL),
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: menuPressed,
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      )
    ],
  );
}
