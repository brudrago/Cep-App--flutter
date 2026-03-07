import 'package:flutter/material.dart';
import 'package:cep_app/shared/ui/cep_app_colors.dart';

sealed class CepAppTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    colorScheme: const ColorScheme.light(
      primary: CepAppColors.primaryColor,
      onPrimary: CepAppColors.primaryColor,
      secondary: CepAppColors.secondaryColor,
      onSecondary: CepAppColors.secondaryColor,
      error: CepAppColors.errorColor,
      onError: CepAppColors.errorColor,
      surface: CepAppColors.lightBgColor,
      onSurface: CepAppColors.lightBgColor,
    ),
    tabBarTheme: TabBarThemeData(
      unselectedLabelColor: Colors.black.withOpacity(.3),
      labelColor: CepAppColors.secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: CepAppColors.lightBgColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CepAppColors.primaryColor,
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(Colors.white),
      thumbColor: const MaterialStatePropertyAll(CepAppColors.primaryColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CepAppColors.primaryColor,
      titleTextStyle: TextStyle(
        color: CepAppColors.secondaryColor,
        fontSize: 16,
      ),
    ),
    scaffoldBackgroundColor: CepAppColors.lightBgColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: CepAppColors.blackColor, fontSize: 14),
      titleMedium: TextStyle(color: CepAppColors.blackColor, fontSize: 20),
    ),
  );

  static final ThemeData dark = light.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CepAppColors.darkBgColor,
    colorScheme: light.colorScheme.copyWith(
      brightness: Brightness.dark,
      surface: CepAppColors.darkBgColor,
      onSurface: CepAppColors.darkBgColor,
    ),
    tabBarTheme: TabBarThemeData(
      unselectedLabelColor: Colors.grey,
      labelColor: CepAppColors.primaryColor,
    ),
    appBarTheme: light.appBarTheme.copyWith(backgroundColor: Colors.black87),
    textTheme: light.textTheme.copyWith(
      bodyMedium: light.textTheme.bodyMedium?.copyWith(
        color: CepAppColors.whiteColor,
      ),
      titleMedium: light.textTheme.titleMedium?.copyWith(
        color: CepAppColors.whiteColor,
      ),
    ),
    inputDecorationTheme: light.inputDecorationTheme.copyWith(
      fillColor: CepAppColors.blackColor,
    ),
  );
}
