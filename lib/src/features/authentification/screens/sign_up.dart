import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _confirmePasswordTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: decores(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                br10,
                reutilisableTextField(
                  "Entrer votre Nom utilisteurs",
                  Icons.person_outline,
                  false,
                  _userNameTextController,
                ),
                br20,
                reutilisableTextField(
                  "Adress Email",
                  Icons.mail,
                  false,
                  _emailTextController,
                ),
                br20,
                reutilisableTextField(
                  "Mot de passe",
                  Icons.lock_outline,
                  true,
                  _passwordTextController,
                ),
                br20,
                reutilisableTextField(
                  "Confirmer mo de passe",
                  Icons.lock_clock_outlined,
                  true,
                  _confirmePasswordTextController,
                ),
                br20,
                inscription(),
                br10,
                compte_existe(
                  context,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
