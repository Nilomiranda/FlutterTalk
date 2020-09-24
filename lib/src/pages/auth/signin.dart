import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:talk/src/components/button.dart';
import 'package:talk/src/components/input.dart';

class SignInPage extends StatelessWidget {
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
                      child: Column(
                        children: [
                          Input(
                            placeholder: 'Your email',
                            type: TextInputType.emailAddress,
                          ),
                          Input(
                              placeholder: 'Your desired password',
                              type: TextInputType.visiblePassword),
                        ],
                      ),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: Column(
                    children: [
                      Button(
                        label: 'Sign in',
                        onPressed: () => {true},
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
            )
          ],
        ),
      ),
    )));
  }
}
