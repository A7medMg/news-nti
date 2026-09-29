import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/data/model/news_model.dart';
import 'package:news/features/home/data/repo/data_soruce/data_source_interface.dart';

class DataSourceImp implements DataSourceInterface {
  @override
  Future<ApiResult<NewsModel>> getData() async {
    try {
      Uri url = Uri.https("newsapi.org", "/v2/everything", {
        "q": "bitcoin",
        "apiKey": "f2c4aa7a779f4f8a899893d8eb00f02d",
      });
      var response = await http.get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var jsonData = jsonDecode(response.body);
        return Success(NewsModel.fromJson(jsonData));
      } else {
        return Error("Error from server");
      }
    } on SocketException {
      return Error("Error from internet ..");
    } catch (e) {
      return Error(e.toString());
    }
  }
}
