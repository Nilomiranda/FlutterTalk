import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:talk/src/components/button.dart';
import 'package:talk/src/components/input.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/login.png'),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Input(
                            placeholder: 'Your email',
                            type: TextInputType.emailAddress,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please, enter a valid email';
                              }
                              return null;
                            },
                          ),
                          Input(
                              placeholder: 'Your desired password',
                              type: TextInputType.visiblePassword),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.70,
                            margin: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Button(
                                  label: 'Sign in',
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      Navigator.pop(context);
                                    } else {
                                      return AlertDialog(
                                        title: Text('Validation error'),
                                        content: Center(child: Text('You probably missed some fields, check again...'),)
                                      );
                                    }
                                  },
                                  appearance: ButtonAppearance.solid,
                                ),
                                Button(
                                  label: 'Create account',
                                  onPressed: () => {true},
                                  appearance: ButtonAppearance.outline,
                                ),
                                Container(
                                  child: Text(
                                    'I forgot my password 😢',
                                  ),
                                  margin: EdgeInsets.only(top: 10.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    )));
  }
}
