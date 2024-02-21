import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.outlineGray20002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Container(
              height: 157.adaptSize,
              width: 157.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              decoration: AppDecoration.fillGray5003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIsolatedShotof,
                height: 156.v,
                width: 152.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              "Dr.Sonalika Sen ",
              style: CustomTextStyles.labelLargePrimaryContainer,
            ),
            SizedBox(height: 4.v),
            Text(
              "Medicine",
              style: CustomTextStyles.bodySmallGray800_1,
            ),
            SizedBox(height: 4.v),
            Text(
              "Shubhrati Medical College",
              style: CustomTextStyles.bodySmallGray800,
            ),
          ],
        ),
      ),
    );
  }
}
