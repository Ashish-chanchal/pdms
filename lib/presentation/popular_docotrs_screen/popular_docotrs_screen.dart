import '../popular_docotrs_screen/widgets/frame5_item_widget.dart';
import '../popular_docotrs_screen/widgets/frame6_item_widget.dart';
import '../popular_docotrs_screen/widgets/frame7_item_widget.dart';
import '../popular_docotrs_screen/widgets/userprofile1_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/presentation/hospital_page/hospital_page.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_title.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:ashish_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:ashish_s_application/widgets/custom_bottom_bar.dart';
import 'package:ashish_s_application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PopularDocotrsScreen extends StatelessWidget {
  PopularDocotrsScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 16.h),
                                        child: CustomSearchView(
                                            controller: searchController,
                                            hintText: "Search Doctors",
                                            alignment: Alignment.centerLeft,
                                            borderDecoration:
                                                SearchViewStyleHelper.fillGray,
                                            filled: true,
                                            fillColor: appTheme.gray5003))),
                                SizedBox(height: 27.v),
                                _buildSeventy(context),
                                SizedBox(height: 30.v),
                                _buildSeventyFour(context),
                                SizedBox(height: 28.v),
                                _buildFrame3(context),
                                SizedBox(height: 13.v),
                                _buildFrame4(context),
                                SizedBox(height: 60.v),
                                _buildFrame5(context),
                                SizedBox(height: 14.v),
                                _buildFrame6(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        title: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(children: [
              AppbarSubtitleOne(
                  text: "Good Morning!", margin: EdgeInsets.only(right: 39.h)),
              SizedBox(height: 3.v),
              AppbarTitle(text: "Gautam Manak")
            ])),
        actions: [
          AppbarTrailingImageOne(imagePath: ImageConstant.imgEllipse1)
        ]);
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildFrame(context,
              popularDocotrs: "Our Doctors", seeAll: "See All")),
      SizedBox(height: 16.v),
      SizedBox(
          height: 138.v,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Frame5ItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildFrame(context,
              popularDocotrs: "Popular Docotrs",
              seeAll: "See All", onTapSeeAll: () {
            onTapTxtSeeAll(context);
          })),
      SizedBox(height: 7.v),
      SizedBox(
          height: 268.v,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return Userprofile1ItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Health Care", style: theme.textTheme.titleMedium),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      child: Text("See all",
                          style: CustomTextStyles.bodyMediumLight))
                ])));
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return SizedBox(
        height: 138.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Frame6ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 4.h, right: 59.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Health Events",
                      style: CustomTextStyles.titleMediumPrimary_1),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      child: Text("See all", style: theme.textTheme.labelLarge))
                ])));
  }

  /// Section Widget
  Widget _buildFrame6(BuildContext context) {
    return SizedBox(
        height: 138.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 4.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Frame7ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String popularDocotrs,
    required String seeAll,
    Function? onTapSeeAll,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(popularDocotrs,
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.primaryContainer)),
      GestureDetector(
          onTap: () {
            onTapSeeAll!.call();
          },
          child: Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(seeAll,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.colorScheme.primary))))
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.hospitalPage;
      case BottomBarEnum.Rewindwhitea70001:
        return "/";
      case BottomBarEnum.Calendarwhitea70001:
        return "/";
      case BottomBarEnum.Userwhitea70001:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.hospitalPage:
        return HospitalPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the doctorListTabContainerScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.doctorListTabContainerScreen);
  }
}
