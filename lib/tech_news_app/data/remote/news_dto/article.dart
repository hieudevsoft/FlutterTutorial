import 'package:freezed_annotation/freezed_annotation.dart';

import 'source.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  factory Article({
    Source? source,
    dynamic author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    dynamic content,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
