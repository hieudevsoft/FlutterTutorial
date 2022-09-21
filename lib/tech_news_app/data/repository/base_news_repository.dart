import 'dart:ffi';

import 'package:flutter_tutorial/tech_news_app/data/remote/news_dto/news_dto.dart';

abstract class BaseNewrepository {
  Future<NewsDto> fetchNews(String? query, int page);
}
