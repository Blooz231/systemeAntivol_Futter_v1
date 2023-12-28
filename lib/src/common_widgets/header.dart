import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:systeme_anti_vol_v1/src/features/others/styles/colors.dart';
import 'package:systeme_anti_vol_v1/src/features/others/styles/style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: 'Dashboard',
                size: 20.0,
                fontWeight: FontWeight.w800,
              ),
              br10,
              PrimaryText(
                text: "Autre Option",
                size: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 131, 121, 121),
              contentPadding: EdgeInsets.only(
                left: 30.0,
                right: 5,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: AppColors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide(color: AppColors.white),
              ),
              prefixIcon: Icon(Icons.wifi, color: AppColors.black),
              hintText: 'Adresse Ip :',
              hintStyle: TextStyle(color: AppColors.secondaryBg, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
