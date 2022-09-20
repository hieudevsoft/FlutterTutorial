// ignore_for_file: prefer_interpolation_to_compose_strings
import 'dart:convert';
import 'package:flutter_tutorial/tech_news_app/common/constant.dart';
import 'package:flutter_tutorial/tech_news_app/data/remote/apis.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/tech_news_app/data/repository/base_news_repository.dart';

class NewsRepository extends BaseNewrepository {
  @override
  Future<List> fetchNews(String? query, int page) async {
    query ??= '';
    final Uri uri = Uri.parse(AppApis.baseUrl +
        AppApis.requestSymbolQuestionParams +
        AppApis.requestCountryParams +
        "=us" +
        AppApis.requestSymbolAndParams +
        AppApis.requestCategoryParams +
        '=technology' +
        AppApis.requestSymbolAndParams +
        AppApis.requestPageSizeParams +
        "=${AppConstants.defaultPageSize}" +
        AppApis.requestSymbolAndParams +
        AppApis.requestPageParams +
        "=$page" +
        AppApis.requestSymbolAndParams +
        AppApis.requestApiKeyParams +
        "=${AppConstants.apiKey}" +
        AppApis.requestSymbolAndParams +
        AppApis.requestQParams +
        "=$query");
    print(uri.toString());
    final response = await http.get(uri);
    final mapResult = jsonDecode(response.body);
    print(mapResult);
    return mapResult['articles'];
  }
}
