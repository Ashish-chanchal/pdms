import '../hospital_page/widgets/frame3_item_widget.dart';
import '../hospital_page/widgets/frame4_item_widget.dart';
import '../hospital_page/widgets/hospitalcard_item_widget.dart';
import '../hospital_page/widgets/userprofile_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_title.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:ashish_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:ashish_s_application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HospitalPage extends StatelessWidget {
  HospitalPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 28.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      right: 12.h,
                    ),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search Doctors",
                      borderDecoration: SearchViewStyleHelper.fillGray,
                      filled: true,
                      fillColor: appTheme.gray5003,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  _buildSixtyFour(context),
                  SizedBox(height: 30.v),
                  _buildSixtySeven(context),
                  SizedBox(height: 28.v),
                  _buildFrame3(context),
                  SizedBox(height: 13.v),
                  _buildFrame4(context),
                  SizedBox(height: 60.v),
                  _buildFrame5(context),
                  SizedBox(height: 14.v),
                  _buildFrame6(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "Good Morning!",
              margin: EdgeInsets.only(right: 39.h),
            ),
            SizedBox(height: 3.v),
            AppbarTitle(
              text: "Gautam Manak",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgEllipse1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildFrame(
            context,
            popularDocotrs: "Our Doctors",
            seeAll: "See All",
          ),
        ),
        SizedBox(height: 16.v),
        SizedBox(
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
              return UserprofileItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildFrame(
            context,
            popularDocotrs: "Popular Docotrs",
            seeAll: "See All",
          ),
        ),
        SizedBox(height: 18.v),
        SizedBox(
          height: 257.v,
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
            itemCount: 4,
            itemBuilder: (context, index) {
              return HospitalcardItemWidget();
            },
          ),
        ),
      ],
    );
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
            Text(
              "Health Care",
              style: theme.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text(
                "See all",
                style: CustomTextStyles.bodyMediumLight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
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
          return Frame3ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.h,
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
  Widget _buildFrame6(BuildContext context) {
    return SizedBox(
      height: 138.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 4.h),
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
          return Frame4ItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String popularDocotrs,
    required String seeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          popularDocotrs,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            seeAll,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
