import 'package:flutter/material.dart';
import 'package:talk/src/components/button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      body: Center(
        child: (
          Column(children: [
            Container(
              child: Image(image: AssetImage('assets/images/login.png'),),
            ),
            Container (
              width: MediaQuery.of(context).size.width * 0.70,
              child: Column(children: [
                Button(label: 'Sign in', onPressed: () => { true }, appearance: ButtonAppearance.solid,),
                Button(label: 'Create account', onPressed: () => { true }, appearance: ButtonAppearance.outline,),
                Container(
                  child: Text('I forgot my password 😢',),
                  margin: EdgeInsets.only(top: 10.0),
                )
              ],),
            )
          ], mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceAround,)
        ),
      ),
    )));
  }
}
