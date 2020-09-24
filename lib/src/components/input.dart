import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  Input({@required this.placeholder});
  
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: TextFormField(
        decoration: InputDecoration(hintText: this.placeholder)
      ),
      margin: EdgeInsets.only(bottom: 20.0),
    ));
  }
}
