import 'package:flutter/material.dart';
import 'package:ruedaz/config/theme/theme.dart';

import 'package:ruedaz/view/viewmodel/AuthViewModel/auth_viewmodel.dart';
import 'package:ruedaz/view/widgets/button_outlined.dart';
import 'package:ruedaz/view/widgets/button_primary.dart';

import '../../../di/locator.dart';
import '../../widgets/root_widget.dart';

class OnboardingPage extends RootWidget<AuthViewmodel> {
  OnboardingPage() : super(getIt());

  @override
  Widget widget(AuthViewmodel model, BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                title: Text("About"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            slivers: [
              // SliverAppBar(
              //   expandedHeight: constraints.maxHeight * 0.4,
              //   automaticallyImplyLeading: false,
              // ),
              SliverToBoxAdapter(
                child: Container(
                  constraints: constraints,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 100),
                      Container(
                        height: 100,
                        width: 130,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/ruedaz_logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 100),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                              "Somos la mejor aplicación para parquear a la medida de tus necesidades.",
                              maxLines: 3,
                              textAlign: TextAlign.left,
                              style: darkTheme.textTheme.bodyText1?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      constraints.maxWidth > 400 ? 28 : 14)),
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth * 0.15),
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: constraints.maxHeight * 0.06,
                                child: ButtonPrimary(
                                  function: () {
                                    Navigator.pushNamed(context, '/redSignUp');
                                  },
                                  text: "Registrarse",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.05,
                            ),
                            Expanded(
                                child: SizedBox(
                              height: constraints.maxHeight * 0.06,
                              child: ButtonOutlined(
                                  function: () {}, text: "Iniciar sesión"),
                            )),
                          ],
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
