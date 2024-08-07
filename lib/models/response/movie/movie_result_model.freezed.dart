// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
mixin _$MovieResult {
  int? get page => throw _privateConstructorUsedError;
  List<Movie>? get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
          MovieResult value, $Res Function(MovieResult) then) =
      _$MovieResultCopyWithImpl<$Res, MovieResult>;
  @useResult
  $Res call(
      {int? page, List<Movie>? results, int? totalPages, int? totalResults});
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res, $Val extends MovieResult>
    implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResultImplCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$$MovieResultImplCopyWith(
          _$MovieResultImpl value, $Res Function(_$MovieResultImpl) then) =
      __$$MovieResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page, List<Movie>? results, int? totalPages, int? totalResults});
}

/// @nodoc
class __$$MovieResultImplCopyWithImpl<$Res>
    extends _$MovieResultCopyWithImpl<$Res, _$MovieResultImpl>
    implements _$$MovieResultImplCopyWith<$Res> {
  __$$MovieResultImplCopyWithImpl(
      _$MovieResultImpl _value, $Res Function(_$MovieResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$MovieResultImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResultImpl extends _MovieResult {
  const _$MovieResultImpl(
      {this.page,
      final List<Movie>? results,
      this.totalPages,
      this.totalResults})
      : _results = results,
        super._();

  factory _$MovieResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResultImplFromJson(json);

  @override
  final int? page;
  final List<Movie>? _results;
  @override
  List<Movie>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'MovieResult(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResultImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResultImplCopyWith<_$MovieResultImpl> get copyWith =>
      __$$MovieResultImplCopyWithImpl<_$MovieResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResultImplToJson(
      this,
    );
  }
}

abstract class _MovieResult extends MovieResult {
  const factory _MovieResult(
      {final int? page,
      final List<Movie>? results,
      final int? totalPages,
      final int? totalResults}) = _$MovieResultImpl;
  const _MovieResult._() : super._();

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$MovieResultImpl.fromJson;

  @override
  int? get page;
  @override
  List<Movie>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$MovieResultImplCopyWith<_$MovieResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
