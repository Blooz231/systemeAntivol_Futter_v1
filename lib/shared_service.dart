// ignore_for_file: unnecessary_null_comparison, null_check_always_fails, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:systeme_anti_vol_v1/src/models/statment_reponse.dart';

class SharedService {
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString("login_details") != null ? true : false;
  }

  static Future<void> setLoginDetails(LoginResponseModel loginResponse) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString("login_details",
        loginResponse != null ? jsonEncode(loginResponse.toJson()) : null);
  }

  static Future<void> logout() async {
    await setLoginDetails(null!);
  }
}

class SharedPreferences {
  static getInstance() {}
}
