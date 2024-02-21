import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265.v,
      width: 150.h,
      margin: EdgeInsets.only(top: 3.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.fillLime.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder22,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 148.v,
                    width: 126.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA70001,
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "Dr.Sumaira Sumi ",
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
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage277,
            height: 179.v,
            width: 124.h,
            radius: BorderRadius.circular(
              62.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
