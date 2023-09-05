import 'package:api_parsing/model/add_news_model.dart';
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

  static Future<String> addNews(
      {required AddNewsModel addNewsModel, required int userId}) async {
    try {
      Response response = await dio.post("<HERE GOES THE POST API>/$userId",
          data: addNewsModel.toJson());
      int statusCode = response.statusCode ?? 0;
      if (statusCode == 200 || statusCode == 201) {
        return response.statusMessage ?? "N/A";
      } else {
        return response.statusMessage ?? "N/A";
      }
    } catch (e) {
      debugPrint(e.toString());
      return e.toString();
    }
  }
}
