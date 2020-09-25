import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:talk/src/components/button.dart';
import 'package:talk/src/components/input.dart';
import 'package:talk/src/config/http-client.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  goToSignInPage(context) {
    Navigator.pushNamed(context, '/sign-in');
  }

  String validateRequiredField(String value, String errorMessage) {
    if (value.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  handleSubmit(context) async {
    // if (_formKey.currentState.validate()) {
    //   Navigator.pop(context);
    // } else {
    //   return null;
    // }
    var api = API();
    var res = await api.get('users/2');
    print(json.decode(res));
  }

  @override
  Widget build(BuildContext context) {
    final emailInput = Input(
      placeholder: 'Email',
      type: TextInputType.emailAddress,
      validator: (value) => validateRequiredField(value, 'Email is required'),
    );
    final passwordInput = Input(
        placeholder: 'Password',
        type: TextInputType.visiblePassword,
        validator: (value) =>
            validateRequiredField(value, 'Password is required'));
    final confirmPasswordInput = Input(
        placeholder: 'Confirm password',
        type: TextInputType.visiblePassword,
        validator: (value) =>
            validateRequiredField(value, 'Passwords don\'t match'));
    final submitButton = Button(
      label: 'Create account',
      appearance: ButtonAppearance.solid,
      onPressed: () => handleSubmit(context),
    );
    final logInButton = Button(
      label: 'I have an account',
      appearance: ButtonAppearance.outline,
      onPressed: () => goToSignInPage(context),
    );

    return (MaterialApp(
        home: Scaffold(
            body: ListView(
      children: [
        Column(
          children: [
            Container(
                child: Image(
              image: AssetImage('assets/images/create.png'),
            )),
            Container(
                width: MediaQuery.of(context).size.width * 0.70,
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    emailInput,
                    passwordInput,
                    confirmPasswordInput,
                    submitButton,
                    logInButton,
                  ]),
                ))
          ],
        )
      ],
    ))));
  }
}
