import '../appointment_screen/widgets/timedisplay_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_title.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ashish_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:ashish_s_application/widgets/custom_elevated_button.dart';
import 'package:ashish_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({Key? key})
      : super(
          key: key,
        );

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 53.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                right: 1.h,
              ),
              child: Column(
                children: [
                  _buildFortyNine(context),
                  SizedBox(height: 30.v),
                  _buildFortySeven(context),
                  SizedBox(height: 9.v),
                  _buildFortySix(context),
                  SizedBox(height: 389.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 144.h,
                      margin: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "Appointment For",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.v),
                  _buildFrame(context),
                  SizedBox(height: 75.v),
                  _buildFrameSeventyNine(context),
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
      height: 22.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray800,
        margin: EdgeInsets.only(
          left: 16.h,
          bottom: 1.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Appointment",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 1.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 49.h),
            child: Row(
              children: [
                Container(
                  height: 153.adaptSize,
                  width: 153.adaptSize,
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  decoration: AppDecoration.fillLightBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage277141x124,
                    height: 141.v,
                    width: 124.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Sumaira Sumi",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "Medicine Specialist",
                        style: CustomTextStyles.bodyMediumGray800_1,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "MBBS,FCPS,MD",
                        style: CustomTextStyles.labelLargeGray800,
                      ),
                      SizedBox(height: 35.v),
                      SizedBox(
                        width: 164.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 11.h),
                                child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(7.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgCall,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 11.h),
                                child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(6.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFrame82,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(7.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgUserPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Working Hours",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 38.v,
                crossAxisCount: 3,
                mainAxisSpacing: 34.h,
                crossAxisSpacing: 34.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return TimedisplayItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Text(
            "Schedules",
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 11.v),
        SizedBox(
          height: 63.v,
          width: 408.h,
          child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: rangeSelectionMode,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: true,
            ),
            daysOfWeekStyle: DaysOfWeekStyle(),
            headerVisible: false,
            focusedDay: focusedDay,
            rangeStartDay: rangeStart,
            rangeEndDay: rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {},
            onRangeSelected: (start, end, focusedDay) {},
            onPageChanged: (focusedDay) {},
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 11.h,
          right: 29.h,
        ),
        child: Row(
          children: [
            Container(
              width: 109.h,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Text(
                "Male ",
                style: CustomTextStyles.titleSmallWhiteA70001,
              ),
            ),
            Container(
              width: 110.h,
              margin: EdgeInsets.only(left: 20.h),
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Text(
                "Female",
                style: theme.textTheme.titleSmall,
              ),
            ),
            Container(
              width: 109.h,
              margin: EdgeInsets.only(left: 20.h),
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Text(
                "Child",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyNine(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      decoration: AppDecoration.fillGray5004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(
            flex: 50,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              bottom: 49.v,
            ),
            child: Text(
              "Visit ",
              style: CustomTextStyles.bodyLargeInter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 20.v,
              bottom: 49.v,
            ),
            child: Text(
              "20",
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomElevatedButton(
            height: 59.v,
            width: 214.h,
            text: "Book Now",
            margin: EdgeInsets.only(bottom: 29.v),
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA7000116,
          ),
        ],
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
                style: CustomTextStyles.bodySmallBluegray500.copyWith(
                  color: appTheme.blueGray500,
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
