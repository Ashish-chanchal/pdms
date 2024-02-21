import '../user_profile_screen/widgets/frame2_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ashish_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:ashish_s_application/widgets/custom_elevated_button.dart';
import 'package:ashish_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildNinetySix(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 677.v,
                            width: 353.h,
                            margin: EdgeInsets.only(left: 13.h),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      right: 19.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Edit Profile",
                                            style: CustomTextStyles
                                                .titleSmallPoppinsWhiteA70001SemiBold,
                                          ),
                                        ),
                                        SizedBox(height: 40.v),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUnsplashJmurdhtm7ng142x142,
                                          height: 142.adaptSize,
                                          width: 142.adaptSize,
                                          radius: BorderRadius.circular(
                                            71.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        SizedBox(height: 1.v),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Change Picture",
                                            style: CustomTextStyles
                                                .bodySmallPoppins,
                                          ),
                                        ),
                                        SizedBox(height: 38.v),
                                        Text(
                                          "Username",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 2.v),
                                        Container(
                                          width: 318.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 11.h,
                                            vertical: 8.v,
                                          ),
                                          decoration: AppDecoration.outlineGray
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 2.v),
                                              Text(
                                                "yANCHUI",
                                                style: CustomTextStyles
                                                    .bodySmallPoppins,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 18.v),
                                        Text(
                                          "Email I’d",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 2.v),
                                        Container(
                                          width: 318.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 11.h,
                                            vertical: 9.v,
                                          ),
                                          decoration: AppDecoration.outlineGray
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8,
                                          ),
                                          child: Text(
                                            "yanchui@gmail.com",
                                            style: CustomTextStyles
                                                .bodySmallPoppins,
                                          ),
                                        ),
                                        SizedBox(height: 15.v),
                                        Text(
                                          "Phone Number",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 5.v),
                                        Container(
                                          width: 318.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 11.h,
                                            vertical: 9.v,
                                          ),
                                          decoration: AppDecoration.outlineGray
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8,
                                          ),
                                          child: Text(
                                            "+14987889999",
                                            style: CustomTextStyles
                                                .bodySmallPoppins,
                                          ),
                                        ),
                                        SizedBox(height: 18.v),
                                        Text(
                                          "Password",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 2.v),
                                        _buildPassword(context),
                                        SizedBox(height: 65.v),
                                        _buildUpdate(context),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 43.v),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder22,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Change Picture",
                                            style: CustomTextStyles
                                                .bodySmallPoppins,
                                          ),
                                        ),
                                        SizedBox(height: 20.v),
                                        Text(
                                          "Username",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 2.v),
                                        _buildUserName(context),
                                        SizedBox(height: 18.v),
                                        Text(
                                          "Email I’d",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 2.v),
                                        _buildEmail(context),
                                        SizedBox(height: 15.v),
                                        Text(
                                          "Phone Number",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 5.v),
                                        _buildPhoneNumber(context),
                                        SizedBox(height: 18.v),
                                        Text(
                                          "Password",
                                          style: CustomTextStyles
                                              .titleSmallPoppins,
                                        ),
                                        SizedBox(height: 2.v),
                                        _buildPassword1(context),
                                        SizedBox(height: 65.v),
                                        _buildUpdate1(context),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 213.v),
                          _buildFrame(context),
                          SizedBox(height: 14.v),
                          _buildFrame1(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySix(BuildContext context) {
    return SizedBox(
      height: 215.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup14,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 3.v,
                  ),
                ),
                centerTitle: true,
                title: AppbarSubtitle(
                  text: "Edit Profile",
                ),
                actions: [
                  AppbarTrailingImage(
                    imagePath: ImageConstant.imgUShareAlt,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 20.h,
                      bottom: 12.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashJmurdhtm7ng,
            height: 142.adaptSize,
            width: 142.adaptSize,
            radius: BorderRadius.circular(
              71.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "evFTbyVVCd",
      hintStyle: CustomTextStyles.bodySmallPoppins,
    );
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
      text: "Update",
      margin: EdgeInsets.only(
        left: 18.h,
        right: 17.h,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsWhiteA70001,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "gautammanak1",
      hintStyle: CustomTextStyles.bodySmallPoppins,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "gautammanak1@gmail.com",
      hintStyle: CustomTextStyles.bodySmallPoppins,
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "+919997355153",
      hintStyle: CustomTextStyles.bodySmallPoppins,
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController1,
      hintText: "gautam@123",
      hintStyle: CustomTextStyles.bodySmallPoppins,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildUpdate1(BuildContext context) {
    return CustomElevatedButton(
      text: "Update",
      margin: EdgeInsets.only(
        left: 33.h,
        right: 37.h,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsWhiteA70001,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 59.h),
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
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 138.v,
      child: ListView.separated(
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
          return Frame2ItemWidget();
        },
      ),
    );
  }
}
