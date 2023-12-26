// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/sign_up.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

TextField reutilisableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Row signUpOption() {
  return Row(
    children: [
      Expanded(
        child: FadeInUp(
          child: MaterialButton(
            height: 50,
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              "S'inscrire",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context as BuildContext,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );
            },
          ),
        ),
      ),
      brW30,
      Expanded(
        child: FadeInUp(
          child: MaterialButton(
            onPressed: () {},
            height: 50,
            color: Colors.blue[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
                child: Text(
              "Google",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      )
    ],
  );
}

FadeInUp forgetPassword(BuildContext context) {
  return FadeInUp(
    duration: const Duration(milliseconds: 1500),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.blue),
            textAlign: TextAlign.right,
          ),
          onPressed: () {
            var materialPageRoute = MaterialPageRoute(
              builder: (context) => SignUpScreen(),
            );
            Navigator.push(
              context as BuildContext,
              materialPageRoute,
            );
          }),
    ),
  );
}

FadeInUp login() {
  return FadeInUp(
    duration: const Duration(milliseconds: 1600),
    child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 150.0,
      ),
      child: MaterialButton(
        onPressed: () {},
        height: 50,
        color: Colors.orange[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}

BoxDecoration decores() {
  return BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(54, 142, 237, 0.294),
        blurRadius: 20,
        offset: Offset(0, 20),
      )
    ],
  );
}
