import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _MyDashboardScreentState();
}

class _MyDashboardScreentState extends State<DashboardScreen> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: decores(),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // menu icon
                  Image.asset(
                    "icons/menu.png",
                    height: 45,
                    color: Colors.grey,
                  ),
                  // icon du compte
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            br10,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashbord Home',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Text(
                    'John Doe',
                    style: GoogleFonts.bebasNeue(fontSize: 72),
                  )
                ],
              ),
            ),
            br30,
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
