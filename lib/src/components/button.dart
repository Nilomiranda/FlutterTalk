import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({ @required this.label, @required this.onPressed })
  // some comment
;  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(child: Text(this.label), onPressed: this.onPressed, color: Colors.white,);
  }
}