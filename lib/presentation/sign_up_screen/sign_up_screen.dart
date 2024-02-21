import '../sign_up_screen/widgets/frame1_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/custom_elevated_button.dart';
import 'package:ashish_s_application/widgets/custom_outlined_button.dart';
import 'package:ashish_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController moblieNoController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                                  Container(
                                      height: 234.v,
                                      width: 279.h,
                                      margin: EdgeInsets.only(left: 43.h),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgBlueModernBusiness234x279,
                                                height: 234.v,
                                                width: 279.h,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 7.v),
                                                    child: Text("Sign Up",
                                                        style: theme.textTheme
                                                            .headlineLarge)))
                                          ])),
                                  SizedBox(height: 30.v),
                                  _buildName(context),
                                  SizedBox(height: 32.v),
                                  _buildEmail(context),
                                  SizedBox(height: 37.v),
                                  _buildMoblieNo(context),
                                  SizedBox(height: 32.v),
                                  _buildPassword(context),
                                  SizedBox(height: 32.v),
                                  _buildConfirmpassword(context),
                                  SizedBox(height: 36.v),
                                  _buildSignUp(context),
                                  SizedBox(height: 22.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 140.h),
                                      child: Text("Or continue with",
                                          style: CustomTextStyles
                                              .bodyMediumRoboto)),
                                  SizedBox(height: 21.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 44.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _buildGoogle(context),
                                                _buildFacebook(context)
                                              ]))),
                                  SizedBox(height: 13.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtDoHaveAccount(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 113.h),
                                          child: Text("Do have account? Login",
                                              style: CustomTextStyles
                                                  .bodyMediumRoboto))),
                                  SizedBox(height: 162.v),
                                  _buildFrame(context),
                                  SizedBox(height: 14.v),
                                  _buildFrame1(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 43.h, right: 53.h),
        child: CustomTextFormField(
            controller: nameController,
            hintText: "Name",
            alignment: Alignment.center,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 43.h, right: 53.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildMoblieNo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 43.h, right: 53.h),
        child: CustomTextFormField(
            controller: moblieNoController,
            hintText: "Moblie No",
            alignment: Alignment.center,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 43.h, right: 53.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 41.h, right: 53.h),
        child: CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "Confirm Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up ",
        margin: EdgeInsets.only(left: 40.h, right: 56.h),
        onPressed: () {
          onTapSignUp(context);
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
        margin: EdgeInsets.only(left: 24.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL4);
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
              return Frame1ItemWidget();
            }));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtDoHaveAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
