import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/home/widgets/category_item.dart';
import 'package:wigootaxidriver/prototype/categories.dart';

Widget buildCategories(BuildContext context) {
  return SizedBox(
    height: 96.h,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: categories
          .map(
            (category) => CategoryItem(
              color: category.color,
              icon: category.icon,
              text: category.name,
            ),
          )
          .toList(),
    ),
  );
}
