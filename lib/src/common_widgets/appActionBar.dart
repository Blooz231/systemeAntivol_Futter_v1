// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:systeme_anti_vol_v1/src/features/others/styles/colors.dart';

class AppActionBarItems extends StatelessWidget {
  const AppActionBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: SvgPicture.asset(
              'images/calendar.svg',
              width: 20,
            ),
            color: AppColors.blue,
            onPressed: () {}),
        const SizedBox(width: 10),
        IconButton(
            icon: SvgPicture.asset('images/ring.svg', width: 20.0),
            onPressed: () {}),
        const SizedBox(width: 15),
        const Row(children: [
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(''),
          ),
          Icon(Icons.arrow_drop_down_outlined, color: AppColors.blue),
        ]),
      ],
    );
  }
}
