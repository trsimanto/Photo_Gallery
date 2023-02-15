import 'package:flutter/material.dart';
import 'package:photo_gallery/widget/common_widget.dart';

class PhotoFullScreen extends StatelessWidget {
  final String imageUrl;

  const PhotoFullScreen(this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        pgImage(imageUrl, isClickable: false),
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_circle_left,
                size: 36,
              )),
        )
      ],
    ));
  }
}
