import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:talk/src/components/button.dart';
import 'package:talk/src/components/input.dart';
import 'package:talk/src/pages/auth/signup.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  String validateRequiredFields(String value, String errorMessage) {
    if (value.isEmpty) {
      return errorMessage;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    void goToCreateAccountPage(context) {
      Navigator.pushNamed(context, '/sign-up');
    }

    final emailInput = Input(
        placeholder: 'Your email',
        type: TextInputType.emailAddress,
        validator: (value) =>
            validateRequiredFields(value, 'Enter a valid email.'));
    final passwordInput = Input(
        placeholder: 'Your password',
        type: TextInputType.visiblePassword,
        validator: (value) =>
            validateRequiredFields(value, 'Your password is missing'));

    final forgotPasswordText = Container(
      margin: EdgeInsets.only(top: 10),
      child: Text('I forgot my password 😢'),
    );

    handleSubmit() {
      if (_formKey.currentState.validate()) {
        Navigator.pop(context);
      } else {
        return null;
      }
    }

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
                          emailInput,
                          passwordInput,
                          Container(
                            width: MediaQuery.of(context).size.width * 0.70,
                            margin: EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Button(
                                  label: 'Sign in',
                                  onPressed: handleSubmit,
                                  appearance: ButtonAppearance.solid,
                                ),
                                Button(
                                  label: 'Create account',
                                  onPressed: () =>
                                      goToCreateAccountPage(context),
                                  appearance: ButtonAppearance.outline,
                                ),
                                forgotPasswordText,
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
