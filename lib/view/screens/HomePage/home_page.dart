import 'package:flutter/material.dart';
import 'package:ruedaz/di/locator.dart';
import 'package:ruedaz/view/viewmodel/HomeViewModel/home_viewmodel.dart';
import 'package:ruedaz/view/widgets/root_widget.dart';

class HomePage extends RootWidget<HomeViewmodel> {
  HomePage() : super(getIt());

  @override
  Widget widget(HomeViewmodel model, BuildContext context) {
    return const Scaffold();
  }
}
