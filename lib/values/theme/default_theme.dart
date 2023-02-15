import 'package:flutter/material.dart';
import '../../config/app_theme.dart';
import '../../config/theme_helper.dart';

ThemeData defaultTheme(AppTheme appTheme) => ThemeData(
      primaryColor: appTheme.mainColor(),
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      fontFamily: 'Montserrat',
      accentColor: appTheme.accentColor(),
      primaryColorLight: appTheme.accentColor(
        brightness: Brightness.light,
      ),
      primaryColorDark: appTheme.accentColor(
        brightness: Brightness.dark,
      ),
      accentColorBrightness: Brightness.light,
      accentTextTheme: _defaultTextTheme(appTheme).apply(
        bodyColor: appTheme.accentColor(),
        displayColor: appTheme.accentColor(),
      ),
      focusColor: appTheme.accentColor(),
      scaffoldBackgroundColor: appTheme.scaffoldColor(),
      primaryTextTheme: _defaultTextTheme(appTheme).copyWith(
          bodyText2: TextStyle(color: Colors.grey),
          bodyText1: TextStyle(color: Colors.grey)),
      hintColor: appTheme.secondColor(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        textTheme: getAppTextTheme(TextStyle(), _defaultTextTheme(appTheme)),
        iconTheme: IconThemeData(color: appTheme.mainColor()),
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      iconTheme: IconThemeData(color: appTheme.mainColor()),
      buttonColor: Colors.white,
      dividerTheme:
          const DividerThemeData(color: Color(0xFF333333), thickness: 0.3),
      buttonTheme: ButtonThemeData(
        buttonColor: appTheme.accentColor(),
      ),
      textTheme:
          getAppTextTheme(const TextStyle(), _defaultTextTheme(appTheme)),
    );

TextTheme _defaultTextTheme(AppTheme appTheme) {
  return TextTheme(
    headline5: TextStyle(
      fontSize: 22.0,
      color: appTheme.secondColor(),
    ),
    headline4: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: appTheme.secondColor(),
    ),
    //page title
    headline3: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: appTheme.mainColor(),
    ),
    //item text style
    headline2: TextStyle(
      color: appTheme.itemTextColor(),
      fontSize: 14,
    ),
    //title text style
    headline1: TextStyle(
      color: appTheme.titleColor(),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),

    subtitle2: TextStyle(
      color: appTheme.subTitleColor(),
      fontSize: 8,
    ),

    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: appTheme.secondColor(),
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: appTheme.secondColor(),
    ),
    button: const TextStyle(
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: appTheme.mainColor(),
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      color: appTheme.secondColor(),
    ),
    bodyText1: TextStyle(
        fontSize: 16.0,
        color: appTheme.secondColor(),
        fontWeight: FontWeight.bold),
    caption: TextStyle(
        fontSize: 16.0,
        color: appTheme.accentColor(),
        fontWeight: FontWeight.bold),
  );
}
