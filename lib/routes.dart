import 'package:flutter/material.dart';
import 'package:impl/screens/main_screens.dart';
import 'package:impl/screens/signin/signin_screen.dart';
import 'package:impl/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens(),
  SignInScreen.routeName: (Container) => SignInScreen(),
};
