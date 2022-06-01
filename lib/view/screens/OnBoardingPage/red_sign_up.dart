import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruedaz/config/theme/theme.dart';
import 'package:ruedaz/view/widgets/button_primary.dart';

class RedirectSignUp extends StatelessWidget {
  RedirectSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  constraints: constraints,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image-ruedaz4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/ruedaz_solo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "¡Regístrate en Ruedaz!",
                        style: darkTheme.textTheme.button?.copyWith(
                            color: Colors.white,
                            fontSize: constraints.maxWidth > 400 ? 28 : 14,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Somos una aplicación que te ofrece  suscripciones mensuales que te ahorran tiempo y dinero en parqueadero.",
                        textAlign: TextAlign.center,
                        style: darkTheme.textTheme.caption?.copyWith(
                            color: Colors.white,
                            fontSize: constraints.maxWidth > 400 ? 26 : 13,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "¿Ya tienes una cuenta? ",
                            style: darkTheme.textTheme.caption?.copyWith(
                                color: Colors.grey,
                                fontSize: constraints.maxWidth > 400 ? 26 : 13,
                                fontWeight: FontWeight.normal),
                          ),
                          GestureDetector(
                            child: Text(
                              "Ingresa aquí",
                              style: darkTheme.textTheme.caption?.copyWith(
                                  color: darkTheme.primaryColor,
                                  fontSize:
                                      constraints.maxWidth > 400 ? 26 : 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 40),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: double.infinity,
                          child: ButtonPrimary(
                              function: () {
                                Navigator.pushNamed(context, "/SignUp");
                              },
                              text: "Continuar"))
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
