import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/constants/taille_config.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/data/data.dart';
import 'package:systeme_anti_vol_v1/src/features/others/styles/colors.dart';
import 'package:systeme_anti_vol_v1/src/features/others/styles/style.dart';
import 'package:systeme_anti_vol_v1/src/utils/responsive.dart';

class HistoryTabe extends StatelessWidget {
  const HistoryTabe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage:
                        NetworkImage(transactionHistory[index]["avatar"]!),
                  ),
                ),
                const PrimaryText(
                  text: 'transactionHistory',
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                const PrimaryText(
                  text: 'transactionHistory[index]["time"]',
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                const PrimaryText(
                  text: 'transactionHistory[index]["amount"]',
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                const PrimaryText(
                  text: 'transactionHistory[index]["status"]',
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
