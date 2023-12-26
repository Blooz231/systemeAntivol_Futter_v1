// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:systeme_anti_vol_v1/src/features/authentification/screens/sign_in.dart';
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

FadeInUp signUpOption(BuildContext context) {
  return FadeInUp(
    duration: const Duration(milliseconds: 1500),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Vous n'avez pas un compte ?",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
              child: const Text(
                "S'inscrire",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
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
        ],
      ),
    ),
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
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
          onPressed: () {
            // var materialPageRoute = MaterialPageRoute(
            //   builder: (context) => SignUpScreen(),
            // );
            // Navigator.push(
            //   context as BuildContext,
            //   materialPageRoute,
            // );
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
        onPressed: () {
          // Navigator.push(
          //   context as BuildContext,
          //   MaterialPageRoute(builder: (context) => SignUpScreen()),
          // );
        },
        height: 50,
        color: Color.fromARGB(255, 4, 98, 136),
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

FadeInUp inscription() {
  return FadeInUp(
    duration: const Duration(milliseconds: 1600),
    child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 150.0,
      ),
      child: MaterialButton(
        onPressed: () {
          // Navigator.push(
          //   context as BuildContext,
          //   MaterialPageRoute(builder: (context) => SignUpScreen()),
          // );
        },
        height: 50,
        color: Color.fromARGB(255, 4, 98, 136),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
          child: Text(
            "S'inscrire",
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
    gradient: LinearGradient(
      colors: [
        Colors.blue.shade900,
        Colors.blue.shade600,
        Colors.blue.shade300,
        Colors.blue.shade200,
        Colors.blue.shade100,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}

FadeInUp compte_existe(BuildContext context) {
  return FadeInUp(
    duration: const Duration(milliseconds: 1500),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Vous avez un compte ?",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
              child: const Text(
                "Se connecter",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                var materialPageRoute = MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                );
                Navigator.push(
                  context as BuildContext,
                  materialPageRoute,
                );
              }),
        ],
      ),
    ),
  );
}
