import '../login_screen/widgets/frame_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/custom_elevated_button.dart';
import 'package:ashish_s_application/widgets/custom_outlined_button.dart';
import 'package:ashish_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController forgotController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgBlueModernBusiness243x302,
                                      height: 243.v,
                                      width: 302.h,
                                      radius: BorderRadius.circular(22.h),
                                      margin: EdgeInsets.only(left: 31.h)),
                                  SizedBox(height: 34.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 136.h),
                                      child: Text("Login",
                                          style:
                                              theme.textTheme.headlineLarge)),
                                  SizedBox(height: 66.v),
                                  _buildEmail(context),
                                  SizedBox(height: 30.v),
                                  _buildForgot(context),
                                  SizedBox(height: 23.v),
                                  _buildLogIn(context),
                                  SizedBox(height: 48.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 135.h),
                                      child: Text("Or continue with",
                                          style: CustomTextStyles
                                              .bodyMediumRoboto)),
                                  SizedBox(height: 17.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 37.h, right: 59.h),
                                      child: Row(children: [
                                        _buildGoogle(context),
                                        _buildFacebook(context)
                                      ])),
                                  SizedBox(height: 23.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTxtDonthaveaccount(context);
                                          },
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "Don’t have account? ",
                                                    style: CustomTextStyles
                                                        .bodyMediumRoboto_1),
                                                TextSpan(
                                                    text: "Create now",
                                                    style: CustomTextStyles
                                                        .titleSmallRoboto)
                                              ]),
                                              textAlign: TextAlign.left))),
                                  SizedBox(height: 200.v),
                                  _buildFrame(context),
                                  SizedBox(height: 14.v),
                                  _buildFrame1(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 37.h, right: 59.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildForgot(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 37.h, right: 45.h),
        child: CustomTextFormField(
            controller: forgotController,
            hintText: "Forgot?",
            hintStyle: CustomTextStyles.titleMediumRobotoPrimary,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(vertical: 2.v),
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildLogIn(BuildContext context) {
    return CustomElevatedButton(
        text: "Log In",
        margin: EdgeInsets.only(left: 37.h, right: 59.h),
        onPressed: () {
          onTapLogIn(context);
        });
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return CustomOutlinedButton(
        width: 141.h,
        text: "Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return CustomOutlinedButton(
        width: 141.h,
        text: "Facebook",
        margin: EdgeInsets.only(left: 16.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 16.adaptSize,
                width: 16.adaptSize)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 59.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Health Events", style: CustomTextStyles.titleMediumPrimary_1),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("See all", style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
        height: 138.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return FrameItemWidget();
            }));
  }

  /// Navigates to the popularDocotrsScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popularDocotrsScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
