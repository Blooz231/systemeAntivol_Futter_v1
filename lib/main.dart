// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/login_screen.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/sign_in.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/sign_up.dart';
import 'package:systeme_anti_vol_v1/src/utils/themes/thmes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemesApp.lightTheme,
      darkTheme: ThemesApp.darkTheme,
      themeMode: ThemeMode.system,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          // decoration:  _bodydecoration(),
          child: SignUpScreen(),
        ),
      ),
    );
  }
  // BoxDecoration _bodydecoration() {
  // return BoxDecoration(
  //   gradient: LinearGradient(
  //     begin: Alignment.topCenter,
  //     end: Alignment.bottomCenter,
  //     colors: [
  //       Colors.blue.shade900,
  //       Colors.blue.shade600,
  //       Colors.blue.shade300,
  //       Colors.blue.shade200,
  //       Colors.blue.shade100,
  //     ],
  //   ),
  // );
// }
}
