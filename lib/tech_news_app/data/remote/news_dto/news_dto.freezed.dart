// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return _NewsDto.fromJson(json);
}

/// @nodoc
mixin _$NewsDto {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<Article>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res>;
  $Res call({String? status, int? totalResults, List<Article>? articles});
}

/// @nodoc
class _$NewsDtoCopyWithImpl<$Res> implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  final NewsDto _value;
  // ignore: unused_field
  final $Res Function(NewsDto) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ));
  }
}

/// @nodoc
abstract class _$$_NewsDtoCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$$_NewsDtoCopyWith(
          _$_NewsDto value, $Res Function(_$_NewsDto) then) =
      __$$_NewsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? status, int? totalResults, List<Article>? articles});
}

/// @nodoc
class __$$_NewsDtoCopyWithImpl<$Res> extends _$NewsDtoCopyWithImpl<$Res>
    implements _$$_NewsDtoCopyWith<$Res> {
  __$$_NewsDtoCopyWithImpl(_$_NewsDto _value, $Res Function(_$_NewsDto) _then)
      : super(_value, (v) => _then(v as _$_NewsDto));

  @override
  _$_NewsDto get _value => super._value as _$_NewsDto;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$_NewsDto(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: articles == freezed
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDto implements _NewsDto {
  _$_NewsDto({this.status, this.totalResults, final List<Article>? articles})
      : _articles = articles;

  factory _$_NewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDtoFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<Article>? _articles;
  @override
  List<Article>? get articles {
    final value = _articles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsDto(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDto &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  _$$_NewsDtoCopyWith<_$_NewsDto> get copyWith =>
      __$$_NewsDtoCopyWithImpl<_$_NewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDtoToJson(
      this,
    );
  }
}

abstract class _NewsDto implements NewsDto {
  factory _NewsDto(
      {final String? status,
      final int? totalResults,
      final List<Article>? articles}) = _$_NewsDto;

  factory _NewsDto.fromJson(Map<String, dynamic> json) = _$_NewsDto.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<Article>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDtoCopyWith<_$_NewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
