import 'package:flutter/material.dart';

enum ButtonAppearance {
  solid,
  outline    
}

var primaryColor = Colors.blue[300];

class Button extends StatelessWidget {
  Button({@required this.label, @required this.onPressed, this.appearance})
  // some comment
  ;
  final String label;
  final Function onPressed;
  final ButtonAppearance appearance;

  @override
  Widget build(BuildContext context) {
    if (this.appearance == ButtonAppearance.solid) {
      return FlatButton(
      child: Text(this.label, style: TextStyle(color: Colors.white),),
      onPressed: this.onPressed,
      color: primaryColor,
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0))
    );
    } else {
      return OutlineButton(
        child: Text(this.label, style: TextStyle(color: primaryColor),),
        onPressed: this.onPressed,
        color: primaryColor,
        borderSide: BorderSide(color: primaryColor),
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(4.0)),
      );
    }
  }
}
