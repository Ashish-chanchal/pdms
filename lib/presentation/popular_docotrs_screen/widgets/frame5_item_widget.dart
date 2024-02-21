import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame5ItemWidget extends StatelessWidget {
  const Frame5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 14.v,
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
            imagePath: ImageConstant.imgSettings,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(height: 27.v),
          Text(
            "35 Doctors",
            style: CustomTextStyles.bodySmallGray800_1,
          ),
          SizedBox(height: 6.v),
          Text(
            "Medicine Specialist",
            style: CustomTextStyles.labelLargePrimaryContainer,
          ),
        ],
      ),
    );
  }
}
