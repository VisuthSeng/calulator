import 'package:flutter/material.dart';

class Buttoncalculate extends StatelessWidget {
  final String nb;
  final Function outputnb;
  final Function onPress;
  final Color numberbox;
  final Color numbercolor;

  const Buttoncalculate(
      {Key key,
      @required this.nb,
      this.outputnb,
      this.onPress,
      this.numberbox,
      this.numbercolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        color: numberbox,
        textColor: numbercolor,
        child: Text(
          nb,
          style: TextStyle(fontSize: 20),
        ),
        padding: EdgeInsets.all(25.0),
        shape: CircleBorder(),
        onPressed: outputnb,
      ),
    );
  }
}
