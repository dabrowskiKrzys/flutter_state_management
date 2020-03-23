import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/settings/user_settings.dart';

class FontSizeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userSettings = Provider.of<UserSettings>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Font Size",
          style: userSettings.textStyle
        ),
        Slider(
          value: userSettings.fontSize,
          onChanged: (double newValue) {
            userSettings.setFontSize(newValue);
          },
          min: 10.0,
          max: 20.0,
          divisions: 5,
          label: userSettings.fontSize.toString(),
        )
      ],
    );
  }
}
