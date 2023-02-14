import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_gallery/values/theme/dark_theme.dart';
import 'package:photo_gallery/values/theme/default_theme.dart';

import 'config/app_theme.dart';
import 'config/routes.dart';
import 'features/gallery/view/photo_gallery.dart';

void main() {
  runApp( const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatefulWidget {
  const PhotoGalleryApp({super.key});


  @override
  State<PhotoGalleryApp> createState() => _PhotoGalleryAppState();
}

class _PhotoGalleryAppState extends State<PhotoGalleryApp> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: defaultTheme(AppTheme()),
      darkTheme: darkTheme(AppTheme()),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute
    );
  }
    Route? onGenerateRoute(settings) {
      Widget _nextPage;

      switch (settings.name) {
        case PhotoGalleryRoutes.photoGallery:
          _nextPage =  const PhotoGallery();
          break;
        default:
          _nextPage = const PhotoGallery();
      }

      return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => _nextPage,
          transitionsBuilder: (_, anim1, __, child) {
            var begin = const Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.easeInSine;
            var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: anim1.drive(tween),
              child: child,
            );
          });
    }

}
