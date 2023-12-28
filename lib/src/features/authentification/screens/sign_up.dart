// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:systeme_anti_vol_v1/src/models/statment_reponse.dart';

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
//
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late LoginRequestModel _loginRequestModel;
  final scaffoldkey = GlobalKey<ScaffoldState>();

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    _loginRequestModel = LoginRequestModel(email: '', password: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: decores(context),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                logoWidget("images/logo1.png"),
                br10,
                reutilisableTextField(
                  "Entrer votre Nom utilisteurs",
                  Icons.person_outline,
                  false,
                  _userNameTextController,
                  (input) => _loginRequestModel.email = input!,
                  (input) => input!.contains("@") ? "Email valid" : null,
                ),
                br20,
                reutilisableTextField(
                  "Adress Email",
                  Icons.mail,
                  false,
                  _emailTextController,
                  (input) => _loginRequestModel.email = input!,
                  (input) => input!.contains("@") ? "Email valid" : null,
                ),
                br20,
                reutilisableTextField(
                  "Mot de passe",
                  Icons.lock_outline,
                  true,
                  _passwordTextController,
                  (value) => _loginRequestModel.password = value!,
                  (input) => input!.length < 3
                      ? "Le Mot de passe doit depacé 3 craracteres"
                      : null,
                ),
                br20,
                reutilisableTextField(
                  "Confirmer mo de passe",
                  Icons.lock_clock_outlined,
                  true,
                  _confirmePasswordTextController,
                  (value) => _loginRequestModel.password = value!,
                  (input) => input!.length < 3
                      ? "Le Mot de passe doit depacé 3 craracteres"
                      : null,
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
