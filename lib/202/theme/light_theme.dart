import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;
  LightTheme() {
    theme = ThemeData(
      appBarTheme:const AppBarTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
      ),
      buttonTheme:const ButtonThemeData(
        colorScheme: ColorScheme.light(
          onPrimary: Colors.red,

        )
      ),
      colorScheme: ColorScheme.light(),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle2: TextStyle(fontSize: 25, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = Colors.redAccent;
}
