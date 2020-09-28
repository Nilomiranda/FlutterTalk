import 'package:flutter/material.dart';
import 'package:talk/src/config/http-client.dart';
import 'dart:convert';

class AccountCreationPayload {
  final String email;
  final String password;

  AccountCreationPayload({@required this.email, @required this.password});
}

class AccountCreationResponse {
  final int id;
  final String token;

  AccountCreationResponse({@required this.id, @required this.token});

  factory AccountCreationResponse.fromJson(Map<String, dynamic> json) {
    return AccountCreationResponse(id: json['id'], token: json['token']);
  }
}

class AuthAPI {
  final String url = 'register';
  final api = API();

  Future<AccountCreationResponse> createAccount(
      AccountCreationPayload payload) async {
    final res = await api.post(url);

    if (res.statusCode == 200) {
      return AccountCreationResponse.fromJson(json.decode(res.body));
    }

    throw Exception('Failed to create account');
  }
}
