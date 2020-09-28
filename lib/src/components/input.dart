import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  Input(
      {@required this.placeholder,
      this.controller,
      this.type = TextInputType.text,
      this.validator});

  final String placeholder;
  final TextInputType type;
  final FormFieldValidator validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: TextFormField(
        controller: this.controller,
        decoration: InputDecoration(labelText: this.placeholder),
        obscureText: this.type == TextInputType.visiblePassword ? true : false,
        keyboardType: this.type,
        validator: this.validator,
      ),
      margin: EdgeInsets.only(bottom: 20.0),
    ));
  }
}
