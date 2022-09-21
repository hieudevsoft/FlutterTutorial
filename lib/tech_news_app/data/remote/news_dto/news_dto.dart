import 'package:freezed_annotation/freezed_annotation.dart';

import 'article.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDto with _$NewsDto {
  factory NewsDto({
    String? status,
    int? totalResults,
    List<Article>? articles,
  }) = _NewsDto;

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);
}
