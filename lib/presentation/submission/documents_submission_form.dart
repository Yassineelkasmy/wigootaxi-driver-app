import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/application/providers/submission_provider.dart';
import 'package:wigootaxidriver/application/submission/submission_event.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/step_indicator.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/upload_field.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class DocumentSubmissionForm extends HookConsumerWidget {
  const DocumentSubmissionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    final submissionController = ref.watch(submissionProvider.notifier);

    submissionController.mapEventToState(
      SubmissionEvent.createUserSubmissionRequested(user.uid),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          buildSmallLogo(),
          20.h.verticalSpace,
          Row(
            children: [
              buildStepIndicator(1, true),
              SizedBox(
                width: 10.w,
                child: Divider(
                  color: kPrimaryColor,
                ),
              ),
              buildStepIndicator(2, true),
              5.w.horizontalSpace,
              Expanded(
                child: Divider(
                  color: kPrimaryColor,
                ),
              ),
              buildStepIndicator(3, true),
              5.w.horizontalSpace,
              Text(
                "Télécharger vos documents",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          20.h.verticalSpace,
          Column(
            children: [
              UploadFeild(
                text: 'Photo de profil*',
                url: 'url',
                name: 'profil',
              ),
              UploadFeild(
                text: "Carte d'identité nationale (Devant)*",
                url: 'url',
                name: 'cin_devant',
              ),
              UploadFeild(
                text: "Carte d'identité nationale (Arrière)*",
                url: 'url',
                name: 'cin_arriere',
              ),
              UploadFeild(
                text: 'Permis de conduite (Devant)*',
                url: 'url',
                name: 'permis_devant',
              ),
              UploadFeild(
                text: 'Permis de conduite (Arrière)*',
                url: 'url',
                name: 'permis_arriere',
              ),
              UploadFeild(
                text: 'Carte grisse (Devant)*',
                url: 'url',
                name: 'cartegrisse_devant',
              ),
              UploadFeild(
                text: 'Carte grisse (Arrière)*',
                url: 'url',
                name: 'cartegrisse_arriere',
              ),
            ],
          )
        ],
      ),
    );
  }
}
