import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/providers/submission_provider.dart';
import 'package:wigootaxidriver/application/submission/submission_event.dart';
import 'package:wigootaxidriver/extensions/extensions.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/driver_type_card.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/step_indicator.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class DriverTypeForm extends HookConsumerWidget {
  const DriverTypeForm({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submissionController = ref.watch(submissionProvider.notifier);
    return SingleChildScrollView(
      child: Column(
        children: [
          buildSmallLogo(),
          Text(
            'Devenir un chauffeur',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          20.h.verticalSpace,
          Row(
            children: [
              buildStepIndicator(1, true),
              5.w.horizontalSpace,
              Text(
                "Type de chauffeur",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16.sp,
                ),
              ),
              Expanded(
                child: Divider(),
              ),
              buildStepIndicator(2, false),
              SizedBox(
                width: 10.w,
                child: Divider(),
              ),
              buildStepIndicator(3, false),
            ],
          ),
          20.h.verticalSpace,
          Text(
            "S'il vous plait choisir comment vous souhaitez devenir partenaire avec Ab Salam",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          40.h.verticalSpace,
          Container(
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Taxi Driver",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Vous êtes un chauffeur de petit ou grand taxi",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20, vertical: 20).expandIt(),
                TextButton(
                  onPressed: () async {
                    await submissionController.mapEventToState(
                      SubmissionEvent.typeChosen('independant'),
                    );
                    pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const SizedBox(
                    height: 150,
                    width: 70,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Indépendant",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Vous êtes un chauffeur indépendant avec voiture",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20, vertical: 20).expandIt(),
                TextButton(
                  onPressed: () async {
                    await submissionController.mapEventToState(
                      SubmissionEvent.typeChosen('taxi'),
                    );
                    pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary: Colors.white,
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const SizedBox(
                      height: 150,
                      width: 70,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 40,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ).paddingOnly(bottom: 30),
        ],
      ),
    );
  }
}
