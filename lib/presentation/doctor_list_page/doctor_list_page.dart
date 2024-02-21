import '../doctor_list_page/widgets/frame8_item_widget.dart';
import '../doctor_list_page/widgets/userprofile2_item_widget.dart';
import 'package:ashish_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class DoctorListPage extends StatefulWidget {
  const DoctorListPage({Key? key}) : super(key: key);

  @override
  DoctorListPageState createState() => DoctorListPageState();
}

class DoctorListPageState extends State<DoctorListPage>
    with AutomaticKeepAliveClientMixin<DoctorListPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 28.v),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildUserProfile(context),
                            SizedBox(height: 38.v),
                            _buildFrame(context),
                            SizedBox(height: 14.v),
                            _buildFrame1(context)
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 245.v,
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.h),
            physics: BouncingScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Userprofile2ItemWidget(onTapUserProfile: () {
                onTapUserProfile(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 59.h),
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
            padding: EdgeInsets.only(left: 4.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Frame8ItemWidget();
            }));
  }

  /// Navigates to the appointmentScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appointmentScreen);
  }
}
