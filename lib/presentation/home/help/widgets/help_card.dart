import 'package:flutter/material.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

Widget buildHelpCard({
  required Icon icon,
  required String text,
  required void Function() onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 10,
                ),
                Text(text),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    ),
  );
}
