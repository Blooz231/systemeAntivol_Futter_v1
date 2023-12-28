// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/side_menu.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/actionscreen.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/etatscrenn.dart';
import 'package:systeme_anti_vol_v1/src/features/others/styles/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final boxise = Hive.box<
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  final TextEditingController adressIpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      key: _drawerkey,
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        // actions: const [
        //   AppActionBarItems(),
        // ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Dashboard",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 17, 95, 159),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            br20,
            // sharche bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                widthFactor: 25,
                child: reutilisableTextField(
                  'Adress Ip',
                  Icons.search,
                  false,
                  adressIpController,
                  (input) {},
                  (input) => input!.contains("") ? "Email valid" : null,
                ),
              ),
            ),
            br50,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Que souhate vous faire ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            br20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        ElementOnAction(
                          icon: Icons.power,
                          actionElement: "ON",
                          backgroundColors: MaterialStateColor.resolveWith(
                            (states) => Color.fromARGB(18, 2, 106, 16),
                          ),
                        ),
                      ],
                    ),
                    br10,
                    Text(
                      'Demarrer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    ElementOnAction(
                        icon: Icons.power_off,
                        actionElement: "OFF",
                        backgroundColors: MaterialStateColor.resolveWith(
                          (states) => Color.fromARGB(18, 236, 11, 11),
                        )),
                    br10,
                    Text(
                      'Eteindre',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    ElementOnAction(
                        icon: Icons.map,
                        actionElement: "GPS",
                        backgroundColors: MaterialStateColor.resolveWith(
                          (states) => Color.fromARGB(18, 13, 23, 197),
                        )),
                    br10,
                    Text(
                      'Localiser',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            br20,
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Information detaillé',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(
                            Icons.gps_fixed,
                          )
                        ],
                      ),
                      br20,
                      // Etat
                      Expanded(
                        child: ListView(
                          children: [
                            EtatEngein(
                              etatName: "Etat de votre Voiture",
                              etats: "etats",
                              icon: Icons.car_crash,
                              color: Colors.green,
                            ),
                            EtatEngein(
                              etatName: "Etat de votre Moto",
                              etats: "etats",
                              icon: Icons.car_crash_rounded,
                              color: Colors.yellow,
                            ),
                            EtatEngein(
                              etatName: "Votre Position actuel",
                              etats: "etats",
                              icon: Icons.map,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
