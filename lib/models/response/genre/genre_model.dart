// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.freezed.dart';

part 'genre_model.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  const Genre._();

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  factory Genre.empty() => const Genre(
    id: 0,
    name: '',
  );
}
