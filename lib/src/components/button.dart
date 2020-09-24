import 'package:flutter/material.dart';

enum ButtonAppearance { solid, outline }

var primaryColor = Colors.blue[600];
const double borderRadius = 4.0;

class Button extends StatelessWidget {
  Button(
      {@required this.label,
      @required this.onPressed,
      this.appearance,
      this.fullWidth})
  // some comment
  ;
  final String label;
  final Function onPressed;
  final ButtonAppearance appearance;
  final bool fullWidth;

  @override
  Widget build(BuildContext context) {
    if (this.appearance == ButtonAppearance.solid) {
      return Container(
        width: double.infinity,
        child: FlatButton(
          child: Text(
                this.label,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: this.onPressed,
              color: primaryColor,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(borderRadius)),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        child: OutlineButton(
          child: Text(
            this.label,
            style: TextStyle(color: primaryColor),
          ),
          onPressed: this.onPressed,
          color: primaryColor,
          borderSide: BorderSide(color: primaryColor),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(borderRadius)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        ),
      );
    }
  }
}
