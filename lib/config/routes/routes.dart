import 'package:flutter/material.dart';

import '../../view/screens/HomePage/home_page.dart';
import '../../view/screens/LoginPage/login_page.dart';
import '../../view/screens/OnBoardingPage/onboarding_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/HomePage': (BuildContext context) => HomePage(),
    '/OnBoarding': (BuildContext context) => OnboardingPage(),
    // '/Splash': (BuildContext context) => SplashPage(),
    '/LoginPage': (BuildContext context) => LoginPage(),
  };
}
