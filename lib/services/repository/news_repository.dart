import 'package:api_parsing/services/repository/api/api.dart';
import 'package:dio/dio.dart';

Dio dio = Dio();

class NewsRepository {
  static getNews() async {
    Response response = await dio.get(baseUrl + posts);
    print("Status Code: ${response.statusCode}");
    print("Status Message: ${response.statusMessage}");
    print("Response Data: ${response.data}");
  }
}
