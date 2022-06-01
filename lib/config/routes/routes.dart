import 'package:flutter/material.dart';
import 'package:ruedaz/view/screens/LoginPage/sign_up_page.dart';
import 'package:ruedaz/view/screens/OnBoardingPage/red_sign_up.dart';

import '../../view/screens/HomePage/home_page.dart';
import '../../view/screens/LoginPage/login_page.dart';
import '../../view/screens/OnBoardingPage/onboarding_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/HomePage': (BuildContext context) => HomePage(),
    '/OnBoarding': (BuildContext context) => OnboardingPage(),
    // '/Splash': (BuildContext context) => SplashPage(),
    '/LoginPage': (BuildContext context) => LoginPage(),
    '/redSignUp': (BuildContext context) => RedirectSignUp(),
    '/SignUp': (BuildContext context) => SignUpPage(),
  };
}
