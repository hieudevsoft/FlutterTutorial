import 'package:http/http.dart';

class AppApis {
  static const baseUrl = 'https://newsapi.org/v2/top-headlines';

  //?Params
  static const requestCountryParams = 'country';
  static const requestSymbolAndParams = '&';
  static const requestSymbolQuestionParams = '?';
  static const requestCategoryParams = 'category';
  static const requestPageSizeParams = 'pageSize';
  static const requestPageParams = 'pageSize';
  static const requestApiKeyParams = 'apiKey';
  static const requestQParams = 'q';
}
