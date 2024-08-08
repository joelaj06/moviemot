// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';

part 'video_model.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    String? iso6391,
    String? iso31661,
    String? name,
    required String key,
    required String site,
    int? size,
    required String type,
    bool? official,
    @JsonKey(name: 'published_at')String? publishedAt,
    String? id,
  }) = _Video;

  const Video._();

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  factory Video.empty() => const Video(
    key: '',
    site: '',
    type: '',
  );
}
