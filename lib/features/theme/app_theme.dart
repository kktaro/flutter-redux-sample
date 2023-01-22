import 'package:flutter/material.dart';

class AppTheme {
  late ThemeData theme;

  AppTheme.light() : this._internal(Brightness.light);
  AppTheme.dark() : this._internal(Brightness.dark);

  AppTheme._internal(Brightness brightness) {
    theme = _createTheme(brightness);
  }

  ThemeData _createTheme(Brightness brightness) => ThemeData(
        brightness: brightness,
        colorSchemeSeed: Colors.yellow,
        fontFamily: "Noto Sans JP",
        useMaterial3: true,
      );
}
