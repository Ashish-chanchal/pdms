import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame3ItemWidget extends StatelessWidget {
  const Frame3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGrayC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      width: 138.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCalendar,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          SizedBox(height: 27.v),
          Text(
            "24/7",
            style: CustomTextStyles.bodySmallGray800_1,
          ),
          SizedBox(height: 5.v),
          Text(
            "Drug Routine",
            style: CustomTextStyles.labelLargePrimaryContainer,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
