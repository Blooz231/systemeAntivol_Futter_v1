// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class EtatEngein extends StatelessWidget {
  final icon;
  final String etatName;
  final String etats;
  final color;
  const EtatEngein({
    super.key,
    required this.etatName,
    required this.etats,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 248, 247, 247),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: color,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                etatName,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                etats,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
