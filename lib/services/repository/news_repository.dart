import 'package:api_parsing/model/posts_model.dart';
import 'package:api_parsing/services/repository/api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Dio dio = Dio();

class NewsRepository {
  static Future<List<PostsModel>> getNews() async {
    try {
      Response response = await dio.get(baseUrl + posts);
      List<dynamic> data = response.data;
      return data.map((element) => PostsModel.fromJson(element)).toList();
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
