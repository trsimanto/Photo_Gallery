import 'package:flutter/material.dart';
/*
|--------------------------------------------------------------------------
| APP THEME
|
| Change the colors for themes.
|--------------------------------------------------------------------------
*/

// Theme colors
class AppColors {
  // MAIN
  final Color _mainLightColor = Colors.black;
  final Color _mainDarkColor = Colors.white;

  // SECONDARY
  final Color _secondLightColor = const Color(0xFF232c33);
  final Color _secondDarkColor = const Color(0xFFF1F1F1);

  // ACCENT
  final Color _accentLightColor = const Color(0xFF465f81);
  final Color _accentDarkColor = const Color(0xFF4a4a4a);

  // SCAFFOLD
  final Color _scaffoldDarkColor = const Color(0xFF000000);
  final Color _scaffoldLightColor = Colors.white;

  // TitleColor
  final Color _titleLightColor = const Color(0xFF545454);
  final Color _titleDarkColor = const Color(0xFFFAFAFA);

  //subtitleColor
  final Color _subLightColor = const Color(0xffb0b3b6);
  final Color _subDarkColor = const Color(0xFFd6d8dc);

  //itemTextColor
  final Color _itemTextLightColor = const Color(0xFF333333);
  final Color _itemTextDarkColor = const Color(0xFFcccccc);
}

class AppTheme extends AppColors {
  Color mainColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _mainLightColor.withOpacity(opacity)
        : _mainDarkColor.withOpacity(opacity));
  }

  Color secondColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _secondLightColor.withOpacity(opacity)
        : _secondDarkColor.withOpacity(opacity));
  }

  Color accentColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _accentLightColor.withOpacity(opacity)
        : _accentDarkColor.withOpacity(opacity));
  }

  Color scaffoldColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _scaffoldLightColor.withOpacity(opacity)
        : _scaffoldDarkColor.withOpacity(opacity));
  }

  Color titleColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _titleLightColor.withOpacity(opacity)
        : _titleDarkColor.withOpacity(opacity));
  }

  Color titleShadowColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _titleDarkColor.withOpacity(opacity)
        : _titleLightColor.withOpacity(opacity));
  }

  Color subTitleColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _subLightColor.withOpacity(opacity)
        : _subDarkColor.withOpacity(opacity));
  }

  Color itemTextColor(
      {double opacity = 1, Brightness brightness = Brightness.light}) {
    return (brightness == Brightness.light
        ? _itemTextLightColor.withOpacity(opacity)
        : _itemTextDarkColor.withOpacity(opacity));
  }
}
