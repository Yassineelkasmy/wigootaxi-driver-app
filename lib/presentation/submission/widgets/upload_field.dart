import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class UploadFeild extends HookWidget {
  UploadFeild({
    Key? key,
    required this.text,
    required this.url,
    required this.name,
  }) : super(key: key);
  final String text;
  final String name;
  final String url;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final imageUrl = useState<String?>(null);
    final isLoading = useState<bool>(false);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(text),
          ),
          5.h.verticalSpace,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.grey.shade100,
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 20.w,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () async {
              final XFile? image =
                  await _picker.pickImage(source: ImageSource.gallery);
              if (image != null) {
                isLoading.value = true;
                final file = File(image.path);
                final destination = 'files/userid/$name';
                final reference = FirebaseStorage.instance.ref();
                final ref = await reference.putFile(file);
                final _url = await ref.ref.getDownloadURL();
                imageUrl.value = _url;
              }
              isLoading.value = false;
            },
            child: Row(
              children: [
                Icon(
                  Icons.image,
                  color: kPrimaryColor,
                ),
                Expanded(
                    child: Center(
                  child: isLoading.value
                      ? CircularProgressIndicator(
                          color: kPrimaryColor,
                        )
                      : Text(
                          'Ajouter $text',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 12.sp,
                          ),
                        ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
