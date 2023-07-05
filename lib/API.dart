import 'dart:convert';

import 'package:g_project/models.dart';
import "package:http/http.dart" as http;

class ApiHealper {
  static Future<RegisterModel> registerAuth(
      {required String userName,
      required String email,
      required String password,
      required String rePassword}) async {
    var headers = {"Content-Type": "application/json"};

    var request = http.Request(
        'POST',
        Uri.parse(
            "http://ec2-16-16-128-143.eu-north-1.compute.amazonaws.com/auth/users/"));
    request.body = json.encode({
      "username": userName.toString(),
      "email": email.toString(),
      "password": password.toString(),
      "re_password": rePassword.toString()
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    final stringData = await response.stream.bytesToString();
    dynamic userData = json.decode(stringData);
    print(userData);
    if (response.statusCode == 201) {
      return RegisterModel.fromJson(userData);
    } else {
      print("error error server");
      return RegisterModel.fromJson(userData);
    }
  }
  static Future<loginAuthModel> loginAuth(
      {required String userName,
     
      required String password
      }) async {
    var headers = {"Content-Type": "application/json"};

    var request = http.Request(
        'POST',
        Uri.parse(
            "http://ec2-16-16-128-143.eu-north-1.compute.amazonaws.com/auth/token/login/"));
    request.body = json.encode({
      "username": userName.toString().trim(),
      
      "password": password.toString(),
      
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    final stringData = await response.stream.bytesToString();
    dynamic userData = json.decode(stringData);
    print(userData);
    if (response.statusCode == 200) {
      return loginAuthModel.fromJson(userData);
    } else {
      print("error error server");
      return loginAuthModel.fromJson(userData);
    }
  }
}
