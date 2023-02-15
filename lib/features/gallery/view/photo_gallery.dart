
import 'package:flutter/material.dart';
import '../api_service/photo_api_service.dart';
class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  PhotoApiService photoApiService = PhotoApiService();
  @override
  void initState() {
    super.initState();
    photoApiService.getAllPhotos(1);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.white,
        child: const Text("Photo Gallery Under Development"),
      ),
    );
  }
}
