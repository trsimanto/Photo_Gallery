
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

import '../config/routes.dart';

pgImage(String imageUrl, {bool isClickable = true}) {
  return
    isClickable?
    CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) =>
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                PhotoGalleryRoutes.photoFullscreen,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
      errorWidget: (context, url, error) => Container(
        color: Colors.transparent,
      ),
    ):
    PinchZoom(
    resetDuration: const Duration(milliseconds: 100),
    maxScale: 2.5,
    child:  CachedNetworkImage(
    imageUrl: imageUrl,
    imageBuilder: (context, imageProvider) =>
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
            ),
          ),
        ),
    errorWidget: (context, url, error) => Container(
      color: Colors.transparent,
    ),
  ));
}
