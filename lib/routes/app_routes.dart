import 'package:flutter/material.dart';
import 'package:ashish_s_application/presentation/welcomepage_screen/welcomepage_screen.dart';
import 'package:ashish_s_application/presentation/login_screen/login_screen.dart';
import 'package:ashish_s_application/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ashish_s_application/presentation/user_profile_screen/user_profile_screen.dart';
import 'package:ashish_s_application/presentation/hospital_container_screen/hospital_container_screen.dart';
import 'package:ashish_s_application/presentation/popular_docotrs_screen/popular_docotrs_screen.dart';
import 'package:ashish_s_application/presentation/doctor_list_tab_container_screen/doctor_list_tab_container_screen.dart';
import 'package:ashish_s_application/presentation/appointment_screen/appointment_screen.dart';
import 'package:ashish_s_application/presentation/book_screen/book_screen.dart';
import 'package:ashish_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomepageScreen = '/welcomepage_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String userProfileScreen = '/user_profile_screen';

  static const String hospitalPage = '/hospital_page';

  static const String hospitalContainerScreen = '/hospital_container_screen';

  static const String popularDocotrsScreen = '/popular_docotrs_screen';

  static const String doctorListPage = '/doctor_list_page';

  static const String doctorListTabContainerScreen =
      '/doctor_list_tab_container_screen';

  static const String appointmentScreen = '/appointment_screen';

  static const String bookScreen = '/book_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomepageScreen: (context) => WelcomepageScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    userProfileScreen: (context) => UserProfileScreen(),
    hospitalContainerScreen: (context) => HospitalContainerScreen(),
    popularDocotrsScreen: (context) => PopularDocotrsScreen(),
    doctorListTabContainerScreen: (context) => DoctorListTabContainerScreen(),
    appointmentScreen: (context) => AppointmentScreen(),
    bookScreen: (context) => BookScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
