import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomepageScreen extends StatelessWidget {
  const WelcomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 497.v,
                      width: 413.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage275,
                            height: 301.v,
                            width: 413.h,
                            alignment: Alignment.bottomCenter),
                        CustomImageView(
                            imagePath: ImageConstant.imgBlueModernBusiness,
                            height: 211.v,
                            width: 302.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 48.h))
                      ])),
                  _buildFrame(context)
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Container(
            height: 358.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 38.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomElevatedButton(
                  height: 59.v,
                  width: 278.h,
                  text: "Next",
                  margin: EdgeInsets.only(bottom: 21.v),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumGray200,
                  onPressed: () {
                    onTapNext(context);
                  },
                  alignment: Alignment.bottomCenter),
              Align(
                  alignment: Alignment.topCenter,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        width: 197.h,
                        child: Text("Find Doctor &\nGet Appointment",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall)),
                    SizedBox(height: 14.v),
                    SizedBox(
                        width: 278.h,
                        child: Text(
                            "You can take medical service to stay at home.make sure a easy login and get your service.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyLargeInter))
                  ]))
            ])));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
