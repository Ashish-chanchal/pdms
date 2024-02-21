import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  const Frame2ItemWidget({Key? key})
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
      decoration: AppDecoration.gradientBlueToOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      width: 138.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 44.v,
            width: 32.h,
          ),
          SizedBox(height: 27.v),
          Text(
            "24/7",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 5.v),
          Text(
            "Blood Donation",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
