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
  final List<Photo> _photoList = [];
  final ScrollController _scrollController = ScrollController();
  int _page = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    //infinity scroll
    _scrollController.addListener(() {
      var triggerFetchMoreSize =
          0.5 * _scrollController.position.maxScrollExtent;
      if (_scrollController.position.pixels > triggerFetchMoreSize) {
        if (isLoading) {
          return;
        }
        isLoading = true;
        var tempPage = _page;
        _page += 1;
        photoApiService.getAllPhotos(_page).then((value) {
          if (value.photos != null) {
            setState(() {
              _photoList.addAll(value.photos?.photo ?? []);
              isLoading = false;
            });
          }
        }).catchError((e) {
          setState(() {
            _page = tempPage;
            isLoading = false;
          });
        });
      }
    });
    //first page photo call
    photoApiService.getAllPhotos(_page).then((value) {
      if (value.photos != null) {
        setState(() {
          _photoList.addAll(value.photos?.photo ?? []);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          controller: _scrollController,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1),
          itemCount: _photoList.length,
          itemBuilder: (BuildContext ctx, index) {
            return pgImage(
                "https://farm${_photoList[index].farm}.staticflickr.com/${_photoList[index].server}/${_photoList[index].id}_${_photoList[index].secret}");
          }),
    );
  }
}
