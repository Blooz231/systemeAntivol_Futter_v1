class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({
    required this.token,
    required this.error,
  });
  factory LoginResponseModel.formJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] ?? "",
      error: json["error"] ?? "",
    );
  }

  toJson() {}
}

class LoginRequestModel {
  String email;
  String password;
  // initialisation  //
  LoginRequestModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}
