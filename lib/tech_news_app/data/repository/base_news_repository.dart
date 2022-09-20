import 'dart:ffi';

abstract class BaseNewrepository {
  Future<List> fetchNews(String? query, int page);
}
