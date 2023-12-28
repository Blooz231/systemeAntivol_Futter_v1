import 'dart:convert';

import 'package:http/http.dart' as htpps;
import 'package:systeme_anti_vol_v1/src/models/statment_reponse.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "http://localhost:9592/";
    final response = await htpps.post(url as Uri, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.formJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Echec de chagement des données!');
    }
  }
}
