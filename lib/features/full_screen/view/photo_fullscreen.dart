
import 'package:flutter/material.dart';

class PhotoFullScreen extends StatelessWidget {
  String imageUrl;
  PhotoFullScreen(this.imageUrl,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.white,
        child: const Text("Photo FullScreen"),
      ),
    );
  }
}
