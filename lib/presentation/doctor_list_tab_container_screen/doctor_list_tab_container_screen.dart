import 'package:ashish_s_application/core/app_export.dart';
import 'package:ashish_s_application/presentation/doctor_list_page/doctor_list_page.dart';
import 'package:ashish_s_application/presentation/hospital_page/hospital_page.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_title.dart';
import 'package:ashish_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ashish_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:ashish_s_application/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DoctorListTabContainerScreen extends StatefulWidget {
  const DoctorListTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DoctorListTabContainerScreenState createState() =>
      DoctorListTabContainerScreenState();
}

class DoctorListTabContainerScreenState
    extends State<DoctorListTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 683.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      DoctorListPage(),
                      DoctorListPage(),
                      DoctorListPage(),
                      DoctorListPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 30.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray800,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Doctor List",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOutlined,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 35.v,
      width: 398.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepOrange50,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            9.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Medicine Specialist",
            ),
          ),
          Tab(
            child: Text(
              "Cardiologist",
            ),
          ),
          Tab(
            child: Text(
              "Dentist",
            ),
          ),
          Tab(
            child: Text(
              "Psycologist",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
