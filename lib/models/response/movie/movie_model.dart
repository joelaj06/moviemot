// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';

part 'movie_model.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    bool? adult,
   @JsonKey(name: 'backdrop_path') String? backdropPath,
   @JsonKey(name: 'genre_ids') List<int>? genreIds,
    required int id,
   @JsonKey(name: 'original_language') String? originalLanguage,
   @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date')String? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average')double? voteAverage,
    @JsonKey(name: 'vote_count')int? voteCount,
  }) = _Movie;

  const Movie._();

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  factory Movie.empty() => const Movie(
        adult: false,
        backdropPath: '',
        genreIds: [],
        id: 0,
        originalLanguage: '',
        originalTitle: '',
        overview: '',
        popularity: 0.0,
        posterPath: '',
        releaseDate: '',
        title: '',
        video: false,
        voteAverage: 0.0,
        voteCount: 0,
      );
}