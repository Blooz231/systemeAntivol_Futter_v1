import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';

class InteractiveWidget extends StatefulWidget {
  @override
  _LoginSate createState() => _LoginSate();
}

class _LoginSate extends State<InteractiveWidget> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          br10,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                ),
                br10,
                FadeInUp(
                  duration: const Duration(milliseconds: 1300),
                  child: const Text(
                    'Bon Retour !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          br20,
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    br10,
                    FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      child: Container(
                        decoration: decores(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            reutilisableTextField(
                                "Entrer votre Email",
                                Icons.person_outline,
                                false,
                                _emailTextController),
                            br30,
                            reutilisableTextField("Password", Icons.lock, false,
                                _passwordTextController),
                          ],
                        ),
                      ),
                    ),
                    br50,
                    forgetPassword(context),
                    br20,
                    login(),
                    br50,
                    signUpOption()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
