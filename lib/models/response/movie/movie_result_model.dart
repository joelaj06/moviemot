// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_model.dart';

part 'movie_result_model.freezed.dart';

part 'movie_result_model.g.dart';

@freezed
class MovieResult with _$MovieResult {
  const factory MovieResult({
    int? page,
    List<Movie>? results,
    int? totalPages,
    int? totalResults,
  }) = _MovieResult;

  const MovieResult._();

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);

  factory MovieResult.empty() => const MovieResult(
        page: 0,
        results: <Movie>[],
        totalPages: 0,
        totalResults: 0,
      );
}
