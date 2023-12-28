// ignore_for_file: prefer_const_constructors, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ElementOnAction extends StatelessWidget {
  final String actionElement;
  final backgroundColors;
  final icon;
  const ElementOnAction({
    super.key,
    required this.actionElement,
    required this.backgroundColors,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: backgroundColors,
          ),
          onPressed: () {
            print(actionElement);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                actionElement,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
