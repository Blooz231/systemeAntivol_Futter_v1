import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: decores(),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: [
                reutilisableTextField(
                  "Email ou UserName",
                  Icons.person_outline,
                  false,
                  _emailTextController,
                ),
                br20,
                reutilisableTextField(
                  "Mot de passe",
                  Icons.lock,
                  true,
                  _passwordTextController,
                ),
                br20,
                forgetPassword(context),
                br10,
                login(),
                br50,
                signUpOption(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
