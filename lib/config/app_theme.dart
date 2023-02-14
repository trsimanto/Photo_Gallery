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
  Color _mainLightColor = Colors.black;
  Color _mainDarkColor = white;

  // SECONDARY
  Color _secondLightColor = Color(0xFF232c33);
  Color _secondDarkColor = Color(0xFFF1F1F1);

  // ACCENT
  Color _accentLightColor = Color(0xFF465f81);
  Color _accentDarkColor = Color(0xFF4a4a4a);

  // SCAFFOLD
  Color _scaffoldDarkColor = Color(0xFF000000);
  Color _scaffoldLightColor = white;

  // TitleColor
  Color _titleLightColor = Color(0xFF545454);
  Color _titleDarkColor = Color(0xFFFAFAFA);

  //subtitleColor
  Color _subLightColor = Color(0xffb0b3b6);
  Color _subDarkColor = Color(0xFFd6d8dc);

  //itemTextColor like settings items test color
  Color _itemTextLightColor = Color(0xFF333333);
  Color _itemTextDarkColor = Color(0xFFcccccc);
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
