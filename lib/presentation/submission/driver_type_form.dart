import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/driver_type_card.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/step_indicator.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class DriverTypeForm extends StatelessWidget {
  const DriverTypeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                buildDriverTypeCard(
                  title: 'Indépendant',
                  description:
                      'Vous êtes un chauffuer indépendant avec voiture',
                  onPressed: () {},
                ),
                10.h.verticalSpace,
              ],
            ),
          ),
          10.h.verticalSpace,
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                buildDriverTypeCard(
                  title: 'Taxi Driver',
                  description: 'Sélectionnez pour devenir un chauffeur de taxi',
                  onPressed: () {},
                ),
                10.h.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
