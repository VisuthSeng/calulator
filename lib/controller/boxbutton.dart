import 'package:flutter/material.dart';

class Boxbutton extends StatelessWidget {
  final Function onPress;

  const Boxbutton({Key key, this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Grade A"),
      onPressed: () => onPress,
    );
  }
}
