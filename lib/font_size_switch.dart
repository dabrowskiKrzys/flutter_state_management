import 'package:flutter/material.dart';

class FontSizeSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FontSizeSwitchState();
  }
}

class FontSizeSwitchState extends State<FontSizeSwitch> {
  double fontSize = 14.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Font Size",
          style: TextStyle(fontSize: fontSize),
        ),
        Slider(
          value: fontSize,
          onChanged: onChanged,
          min: 10.0,
          max: 20.0,
          divisions: 5,
          label: fontSize.toString(),
        )
      ],
    );
  }

  void onChanged(double newValue) {
    setState(() {
      fontSize = newValue;
    });
  }
}
