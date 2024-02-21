import '../book_screen/widgets/frame9_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ashish_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:ashish_s_application/widgets/custom_elevated_button.dart';
import 'package:ashish_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5002,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Column(
              children: [
                SizedBox(
                  height: 813.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage277475x237,
                        height: 475.v,
                        width: 237.h,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 262.v,
                            right: 16.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr.Sumaira Sumi",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 9.v),
                              Text(
                                "Medicine Specialist",
                                style: CustomTextStyles.labelLargeGray800,
                              ),
                              SizedBox(height: 9.v),
                              Text(
                                "MBBS,FCPS,MD",
                                style: CustomTextStyles.bodyMediumGray800_1,
                              ),
                              SizedBox(height: 19.v),
                              Row(
                                children: [
                                  CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgCall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: CustomIconButton(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgFrame82,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: CustomIconButton(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgUserPrimary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildFrame(context),
                    ],
                  ),
                ),
                SizedBox(height: 70.v),
                _buildFrame1(context),
                SizedBox(height: 14.v),
                _buildFrame2(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 24.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90001,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOutlinedOnprimary,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.fillOnSecondaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: _buildFrameSixtySix(
                    context,
                    experience: "Patients",
                    years: "3.08k+",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.h),
                  child: _buildFrameSixtySix(
                    context,
                    experience: "Experience",
                    years: "5+ Years",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: _buildFrameSixtySix(
                    context,
                    experience: "Review",
                    years: "2.00 K",
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Text(
              "Biography",
              style: CustomTextStyles.titleMediumWhiteA70001,
            ),
            SizedBox(height: 12.v),
            SizedBox(
              width: 369.h,
              child: ReadMoreText(
                "The Find a Surgeon database lists  members of the ACST including Fellows and Associte Fellows.The tool finding a qualified surgical specialist who is The Find a Surgeon database lists members of the ACS including Fellows and Associate Fellows",
                trimLines: 5,
                colorClickableText: appTheme.lightBlue300,
                trimMode: TrimMode.Line,
                trimCollapsedText: " read more...",
                moreStyle: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                  height: 1.36,
                ),
                lessStyle: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                  height: 1.36,
                ),
              ),
            ),
            SizedBox(height: 35.v),
            CustomElevatedButton(
              height: 59.v,
              text: "Book an Appointment",
              buttonStyle: CustomButtonStyles.fillLightBlue,
              buttonTextStyle: CustomTextStyles.titleMedium16,
            ),
            SizedBox(height: 25.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 59.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Health Events",
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text(
                "See all",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return SizedBox(
      height: 138.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 20.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Frame9ItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildFrameSixtySix(
    BuildContext context, {
    required String experience,
    required String years,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(
                experience,
                style: CustomTextStyles.bodySmallGray600.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                years,
                style: CustomTextStyles.titleSmallGray800.copyWith(
                  color: appTheme.gray800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
