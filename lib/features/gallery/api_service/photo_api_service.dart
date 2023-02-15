
import 'dart:convert';

import '../model/photo_model.dart';
import '../../../server_information/ServerInfo.dart';
import '../../../network/helper/api_helper.dart';
import '../../../network/utils/url_path.dart';

class PhotoApiService{
  final ApiHelper _helper = ApiHelper();
   Future<PhotoModel> getAllPhotos(int page) async {
    var response = await _helper.get(URLPath.restPath,
        query: {
          'api_key': ServerInfo.API_KEY,
          'format': 'json',
          'page': page,
          'method': ServerInfo.METHOD
        });
    PhotoModel photoModel = PhotoModel.fromJson(response);
    return photoModel;
  }


}