import 'package:flutter/material.dart';
import 'package:talk/src/components/button.dart';


class AuthPage extends StatelessWidget {
  bool returnTruthfullness() {
    return true;
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/welcome.png'),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.70,
              margin: EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: [
                  Button(
                    label: 'Sign in',
                    onPressed: returnTruthfullness,
                    appearance: ButtonAppearance.solid,
                  ),
                  Button(
                    label: 'Create account',
                    onPressed: returnTruthfullness,
                    appearance: ButtonAppearance.outline,
                  )
                ],
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
        ),
      ),
    ));
  }
}