import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ruedaz/view/viewmodel/AuthViewModel/auth_viewmodel.dart';
import 'package:ruedaz/view/viewmodel/HomeViewModel/home_viewmodel.dart';

final getIt = GetIt.I;
Future<void> initializeDI({GlobalKey<NavigatorState>? navigatorKey}) async {
  await _data();
  await _domain(navigatorKey);
  await _view();
}

Future<void> _view() async {}

Future<void> _domain(GlobalKey<NavigatorState>? navigatorKey) async {
  getIt.registerLazySingleton<HomeViewmodel>(() => HomeViewmodel());
  getIt.registerLazySingleton<AuthViewmodel>(() => AuthViewmodel());
}

Future<void> _data() async {}
