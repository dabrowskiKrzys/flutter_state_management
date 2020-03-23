import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/settings/user_settings.dart';

class FontWeightSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userSettings = Provider.of<UserSettings>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Bold Font",
          style: userSettings.textStyle
        ),
        Switch(
          value: userSettings.boldFont,
          onChanged: (bool newValue) {
            userSettings.setBoldFont(newValue);
          },
        )
      ],
    );
  }
}
