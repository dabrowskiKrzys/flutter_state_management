import 'package:flutter/material.dart';

class FontWeightSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FontWeightSwitchState();
  }
}

class FontWeightSwitchState extends State<FontWeightSwitch> {
  bool boldEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          "Bold Font",
          style: TextStyle(fontWeight: boldEnabled ? FontWeight.bold : FontWeight.normal  ),
        ),
        Switch(value: boldEnabled, onChanged: onChanged)
      ],
    );
  }

  void onChanged(bool newValue) {
    setState(() {
      boldEnabled = newValue;
    });
    
  }
}
