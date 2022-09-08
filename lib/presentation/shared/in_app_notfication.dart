import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InnerNotifications extends StatelessWidget {
  const InnerNotifications({
    Key? key,
    required this.message,
    required this.isScuccess,
  }) : super(key: key);
  final String message;
  final bool isScuccess;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isScuccess ? Colors.green : Colors.red.shade400,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            10.w.horizontalSpace,
            Flexible(
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              isScuccess ? Icons.check : Icons.error,
              size: 32,
              color: Colors.white,
            ),
            10.w.horizontalSpace,
          ],
        ),
      ),
    );
  }
}
