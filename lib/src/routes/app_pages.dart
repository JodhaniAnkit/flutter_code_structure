

// ignore_for_file: constant_identifier_names

import 'package:flutter_structure/src/views/authorization/login_screen/login_screen_view.dart';
import 'package:flutter_structure/src/views/authorization/onboard/binding/onboard.dart';
import 'package:flutter_structure/src/views/authorization/onboard/onboard_view.dart';
import 'package:flutter_structure/src/views/authorization/signup_screen/binding/signup_screen.dart';
import 'package:flutter_structure/src/views/authorization/signup_screen/signup_screen_view.dart';
import 'package:flutter_structure/src/views/authorization/welcome_screen/binding/welcome_screen.dart';
import 'package:flutter_structure/src/views/authorization/welcome_screen/welcome_screen_view.dart';
import 'package:flutter_structure/src/views/dashboard/binding/dashboard.dart';
import 'package:flutter_structure/src/views/dashboard/dashboard_view.dart';
import 'package:flutter_structure/src/views/setting_page/components/change_language_screen/binding/change_language_binding.dart';
import 'package:flutter_structure/src/views/setting_page/components/change_language_screen/change_language_screen_view.dart';
import 'package:flutter_structure/src/views/setting_page/components/edit_profile/binding/edit_profile_binding.dart';
import 'package:flutter_structure/src/views/setting_page/components/edit_profile/edit_profile_view.dart';
import 'package:flutter_structure/src/views/setting_page/setting_page_view.dart';
import 'package:get/get.dart';

import 'package:flutter_structure/src/views/authorization/login_screen/binding/login_screen.dart';
import 'package:flutter_structure/src/views/authorization/select_language_screen/binding/select_language_screen.dart';
import 'package:flutter_structure/src/views/authorization/select_language_screen/select_language_screen_view.dart';
import 'package:flutter_structure/src/views/authorization/splash/bindings/splash_binding.dart';
import 'package:flutter_structure/src/views/authorization/splash/views/splash_view.dart';

import 'package:flutter_structure/src/views/home_page/binding/home_page.dart';
import 'package:flutter_structure/src/views/home_page/home_page_view.dart';

import 'package:flutter_structure/src/views/setting_page/binding/setting_page.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.splash;

  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => SplashView(),
        transition: Transition.downToUp,
        binding: SplashBinding()),
    GetPage(
        name: Routes.onBoard,
        page: () => const OnBoardView(),
        transition: Transition.downToUp,
        binding: OnBoardBinding()),
    GetPage(
        name: Routes.selectLanguage,
        page: () => const SelectLanguageScreenView(),
        transition: Transition.downToUp,
        binding: SelectLanguageBinding()),
    GetPage(
        name: Routes.welcomeScreen,
        page: () => const WelcomeScreenView(),
        transition: Transition.downToUp,
        binding: WelcomeScreenBinding()),
    GetPage(
        name: Routes.loginScreen,
        page: () => const LoginScreenView(),
        transition: Transition.downToUp,
        binding: LoginScreenBinding()),
    GetPage(
        name: Routes.signupScreen,
        page: () => const SignupScreenView(),
        transition: Transition.downToUp,
        binding: SignupScreenBinding()),
    GetPage(
        name: Routes.dashboardScreen,
        page: () => DashboardScreen(),
        transition: Transition.downToUp,
        binding: DashboradBinding()),
    GetPage(
        name: Routes.homeScreen,
        page: () => HomePageView(),
        transition: Transition.downToUp,
        binding: HomePageBinding()),
    GetPage(
        name: Routes.settingScreen,
        page: () => SettingPageView(),
        transition: Transition.downToUp,
        binding: SettingPageBinding()),
    GetPage(
        name: Routes.editProfileScreen,
        page: () => EditProfileView(),
        transition: Transition.downToUp,
        binding: EditProfileBinding()),
    GetPage(
        name: Routes.changeLanguageScreen,
        page: () => const ChangeLanguageScreenView(),
        transition: Transition.downToUp,
        binding: ChangeLanguageBinding())
  ];
}
