import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:photos/models/gallery_item.dart';

class ApiService {
  static BaseOptions baseOption = BaseOptions(
      baseUrl:
          'https://api.unsplash.com/photos/?client_id=cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0');

  static Dio dio = Dio(baseOption);

  static getPhotos() async {
    Response response = await dio.get('');
    List<dynamic> items =
        response.data.map((e) => GalleryItem.fromJson(e)).toList();
    return items;
  }
}
