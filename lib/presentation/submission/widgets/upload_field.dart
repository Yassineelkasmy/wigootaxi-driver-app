import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/application/providers/submission_provider.dart';
import 'package:wigootaxidriver/application/submission/submission_event.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class UploadFeild extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final submissionController = ref.watch(submissionProvider.notifier);
    final submissionState = ref.watch(submissionProvider);
    final user = ref.watch(userProvider)!;

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
                final destination = 'files/${user.uid}/$name';
                final reference =
                    FirebaseStorage.instance.ref().child(destination);
                try {
                  final ref = await reference.putFile(file);
                  final _url = await ref.ref.getDownloadURL();
                  imageUrl.value = _url;
                  await submissionController.mapEventToState(
                    SubmissionEvent.documentSubmitted(url, name, user.uid),
                  );
                } catch (e) {}
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
