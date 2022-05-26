import 'package:flutter/src/widgets/framework.dart';
import 'package:ruedaz/view/viewmodel/AuthViewModel/auth_viewmodel.dart';

import '../../../di/locator.dart';
import '../../widgets/root_widget.dart';

class LoginPage extends RootWidget<AuthViewmodel> {
  LoginPage() : super(getIt());

  @override
  Widget widget(AuthViewmodel model, BuildContext context) {
    // TODO: implement widget
    throw UnimplementedError();
  }
}
