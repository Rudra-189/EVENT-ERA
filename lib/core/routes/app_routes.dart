import 'package:eventera/views/auth_view/signin_screen.dart';
import 'package:eventera/views/auth_view/signup_process_screen.dart';
import 'package:eventera/views/auth_view/signup_screen.dart';
import 'package:eventera/views/auth_view/splash_screen.dart';
import 'package:eventera/views/auth_view/upload_preview_screen.dart';
import 'package:eventera/views/auth_view/upload_profile_screen.dart';
import 'package:eventera/views/home_view/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String signinScreen = '/signinScreen';
  static const String signiupScreen = '/signiupScreen';
  static const String signiupProcessScreen = '/signiupProcessScreen';
  static const String uploadProfileScreen = '/uploadProfileScreen';
  static const String uploadPreviewScreen = '/uploadPreviewScreen';
  static const String homeScreen = '/homeScreen';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: SplashScreen.builder,
        signinScreen: SigninScreen.builder,
        signiupScreen: SignupScreen.builder,
        signiupProcessScreen: SignupProcessScreen.builder,
        uploadProfileScreen: UploadProfileScreen.builder,
        uploadPreviewScreen: UploadPreviewScreen.builder,
        homeScreen: HomeScreen.builder
      };
}
