import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/home.dart';
// import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
