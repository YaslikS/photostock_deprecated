import 'dart:async';

import 'package:dio/dio.dart';
import 'package:photostock/service/model/photo_item.dart';

import '../theme/theme.dart';

const baseUrl = 'https://api.unsplash.com/photos/?client_id=';

class PhotoService {
  String finalUrl = baseUrl + StringConstants.accessKey;
  final dio = Dio(BaseOptions(baseUrl: baseUrl));

  Future<List<PhotoItem>> getListOfPhoto() async {
    final response = await dio.get(finalUrl);

    List<PhotoItem> list = [];
    try {
      if (response.statusCode == 200 && response.data != null) {
        response.data.forEach((e) {
          list.add(PhotoItem.fromJson(e));
        });
      } else {
        print("error");
      }
    } on DioException catch (error, stacktrace) {
      print("Exception occured: $error StackTrace: $stacktrace");
    }
    list.forEach((element) {
      print(" ${element.user} ${element.likes} ");
    });
    return list;
  }
}
