
import 'package:flutter/material.dart';
import '../../../widget/common_widget.dart';
import '../api_service/photo_api_service.dart';
import '../model/photo_model.dart';
class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  PhotoApiService photoApiService = PhotoApiService();
  List<Photo> _photoList = [];
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    photoApiService.getAllPhotos(1).then((value) {
      if(value.photos!=null){
        setState(() {
          _photoList.addAll(value.photos?.photo??[]);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          color: Colors.white,
          child: GridView.builder(
              controller: _scrollController,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
              itemCount: _photoList.length,
              itemBuilder: (BuildContext ctx, index) {
                return pgImage("https://farm${_photoList[index].farm}.staticflickr.com/${_photoList[index].server}/${_photoList[index].id}_${_photoList[index].secret}");
              }),
        ),
    );
  }
}
