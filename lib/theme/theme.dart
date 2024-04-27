import 'package:flutter/material.dart';
import 'package:startup_sathi/theme/app_pallete.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
      errorBorder: _border(AppPallete.errorColor),
    ),
    dataTableTheme: const DataTableThemeData(
      dataRowMinHeight: 70,
      dataRowMaxHeight: 100,
      dividerThickness: 3,
      headingRowHeight: 50,
      columnSpacing: 20,
      horizontalMargin: 20,
      dataRowColor: MaterialStatePropertyAll(
        AppPallete.borderColor,
      ),
      dataTextStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      headingTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
