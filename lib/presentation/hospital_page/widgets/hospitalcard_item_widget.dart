import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HospitalcardItemWidget extends StatelessWidget {
  const HospitalcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 19.v),
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      width: 150.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 148.v,
            width: 126.h,
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle1,
              height: 112.v,
              width: 115.h,
              radius: BorderRadius.circular(
                4.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            width: 127.h,
            child: Text(
              "Shubhrati Medical Hospital\nMeerut",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallGray800,
            ),
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }
}
