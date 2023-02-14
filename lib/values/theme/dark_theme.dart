
import 'package:flutter/material.dart';
import '../../config/app_theme.dart';
import '../../config/theme_helper.dart';

TextTheme _defaultTextTheme(AppTheme appTheme) {
  return TextTheme(
    headline5: TextStyle(
      fontSize: 22.0,
      color: appTheme.secondColor(brightness: Brightness.dark),
    ),
    headline4: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: appTheme.secondColor(brightness: Brightness.dark),
    ),
    headline3: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: appTheme.mainColor(brightness: Brightness.dark),
    ),
    headline2: TextStyle(
      color: appTheme.itemTextColor(brightness: Brightness.dark),
      fontSize: 14,
    ),

    headline1: TextStyle(
      color: appTheme.titleColor(brightness: Brightness.dark),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    subtitle2: TextStyle(
      color: appTheme.subTitleColor(brightness: Brightness.dark),
      fontSize: 8,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: appTheme.secondColor(brightness: Brightness.dark),
    ),
    button: TextStyle(
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: appTheme.mainColor(brightness: Brightness.dark),
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      color: appTheme.secondColor(brightness: Brightness.dark),
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: appTheme.secondColor(brightness: Brightness.dark),
    ),
    caption: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: appTheme.accentColor(brightness: Brightness.dark),
    ),
  );
}

ThemeData darkTheme(AppTheme appTheme) => ThemeData(
      primaryColor: appTheme.mainColor(brightness: Brightness.dark),
      backgroundColor: Colors.white,
      brightness: Brightness.dark,
      fontFamily: 'Montserrat',
      accentColor: appTheme.accentColor(brightness: Brightness.dark),
      iconTheme:
          IconThemeData(color: appTheme.mainColor(brightness: Brightness.dark)),
      primaryColorLight: appTheme.accentColor(
        brightness: Brightness.light,
      ),
      primaryColorDark: appTheme.accentColor(
        brightness: Brightness.dark,
      ),
      primaryTextTheme: _defaultTextTheme(appTheme).copyWith(
          bodyText2:
              TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          bodyText1:
              TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
      accentColorBrightness: Brightness.dark,
      accentTextTheme: _defaultTextTheme(appTheme).apply(
        bodyColor: appTheme.accentColor(brightness: Brightness.dark),
        displayColor: appTheme.accentColor(brightness: Brightness.dark),
      ),
      focusColor: appTheme.accentColor(brightness: Brightness.dark),
      scaffoldBackgroundColor:
          appTheme.scaffoldColor(brightness: Brightness.dark),
      hintColor: appTheme.secondColor(brightness: Brightness.dark),
      appBarTheme: AppBarTheme(
        textTheme: getAppTextTheme(const TextStyle(), _defaultTextTheme(appTheme)),
        color:
            appTheme.scaffoldColor(brightness: Brightness.dark, opacity: 0.5),
        iconTheme: IconThemeData(
            color: appTheme.mainColor(brightness: Brightness.dark)),
        elevation: 1.0,
        brightness: Brightness.dark,
      ),
      buttonColor: Colors.white,
      dividerTheme: DividerThemeData(color: Color(0xFFcccccc), thickness: 0.3),
      buttonTheme: ButtonThemeData(
        buttonColor: appTheme.accentColor(),
      ),
      textTheme: getAppTextTheme(const TextStyle(), _defaultTextTheme(appTheme)),
    );
