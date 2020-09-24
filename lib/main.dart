import 'package:flutter/material.dart';
import 'package:talk/src/components/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.end,
        ),
      ),
    ));
  }
}
