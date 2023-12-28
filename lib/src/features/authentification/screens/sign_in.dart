// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_print, unnecessary_new

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/shared_service.dart';
import 'package:systeme_anti_vol_v1/src/api/api_service.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/progrss_barHUD.dart';
import 'package:systeme_anti_vol_v1/src/common_widgets/widget_utilisable.dart';
import 'package:systeme_anti_vol_v1/src/constants/constantes.dart';
import 'package:systeme_anti_vol_v1/src/models/statment_reponse.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
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
    _loginRequestModel = LoginRequestModel(
      email: 'chabilou@gmail.com',
      password: '123456',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
      valueColor: AlwaysStoppedAnimation(Colors.black),
      child: _uibuildSetup(context),
    );
  }

  Widget _uibuildSetup(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: 85,
                    horizontal: 20,
                  ),
                  decoration: decores(context),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: [
                        br20,
                        Text(
                          "Connexion",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        br20,
                        new TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          initialValue: _loginRequestModel.email,
                          onSaved: (input) => _loginRequestModel.email = input!,
                          validator: (input) =>
                              input!.contains('@') ? "Email valide" : null,
                          decoration: new InputDecoration(
                            hintText: "Adresse Email",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.2),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        br20,
                        new TextFormField(
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                          keyboardType: TextInputType.text,
                          initialValue: _loginRequestModel.password,
                          onSaved: (input) =>
                              _loginRequestModel.password = input!,
                          validator: (input) => input!.length < 4
                              ? "LE mot de passe doit depasser ' caractères"
                              : null,
                          obscureText: hidePassword,
                          decoration: new InputDecoration(
                            hintText: "Mot de passe",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              icon: Icon(hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                        ),
                        br30,
                        TextButton(
                          onPressed: () {
                            if (validateAndSave()) {
                              print(_loginRequestModel.toJson());
                              setState(() {
                                isApiCallProcess = true;
                              });
                              APIService apiService = new APIService();
                              apiService
                                  .login(_loginRequestModel)
                                  .then((value) {
                                if (value != null) {
                                  setState(() {
                                    isApiCallProcess = false;
                                  });
                                }
                                if (value.token.isNotEmpty) {
                                  final snackBar = SnackBar(
                                      content: Text("Connexion Success"));
                                  scaffoldkey.currentState!
                                      .showBodyScrim(snackBar as bool, 0.3);

                                  SharedService.setLoginDetails(value);
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  final snackBar =
                                      SnackBar(content: Text(value.error));
                                  scaffoldkey.currentState!
                                      .showBodyScrim(snackBar as bool, 0.3);
                                }
                              });
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.secondary),
                          ),
                          child: Text(
                            "Connecter",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        br10,
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
