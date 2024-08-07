// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../genre/genre_model.dart';

part 'movie_detail_model.freezed.dart';

part 'movie_detail_model.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    bool? adult,
   @JsonKey(name: 'backdrop_path') String? backdropPath,
    int? budget,
     List<Genre>? genres,
    String? homepage,
    int? id,
    String? imdbId,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    int? revenue,
    int? runtime,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,

  }) = _MovieDetail;

  const MovieDetail._();

  factory MovieDetail.fromJson(Map<String, dynamic> json) => _$MovieDetailFromJson(json);

  factory MovieDetail.empty() => const MovieDetail(

  );
}
