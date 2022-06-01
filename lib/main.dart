import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/routes/routes.dart';
import 'config/theme/theme.dart';
import 'di/locator.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDI(navigatorKey: _navigatorKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      title: 'Material App',
      initialRoute: '/OnBoarding',
      home: Container(),
      routes: getRoutes(),
      theme: darkTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
