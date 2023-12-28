// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace, unnecessary_new, no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/shared_service.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/dashboard.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/loginTest.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/sign_in.dart';
import 'package:systeme_anti_vol_v1/src/utils/themes/thmes.dart';

Widget _defaultHome = new SignInScreen();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // definir la page d'acceuil par defaut

  // recupère le rsultat de la fontion de connexion
  bool _result = await SharedService.isLoggedIn();
  if (_result) {
    _defaultHome = new SignInScreen();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 22.0, color: Colors.redAccent),
            displayMedium: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Colors.redAccent,
            ),
            bodyLarge: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Colors.blueAccent,
            )),
      ),
      home: _defaultHome,
      routes: <String, WidgetBuilder>{
        // definition des routes
        '/home': (BuildContext context) => new DashboardScreen(),
        '/login': (BuildContext context) => new SignInScreen(),
      },
    );
  }
}
