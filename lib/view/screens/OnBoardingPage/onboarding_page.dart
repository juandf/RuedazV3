import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ruedaz/view/viewmodel/AuthViewModel/auth_viewmodel.dart';

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
              SliverAppBar(
                expandedHeight: constraints.maxHeight * 0.4,
                automaticallyImplyLeading: false,
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
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
                        const SizedBox(height: 50),
                        Text(
                          "Somos la mejor aplicación\npara parquear a la medida\nde tus necesidades.",
                          style: GoogleFonts.nunito(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("data"),
                            )
                          ],
                        )
                      ],
                    ),
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
