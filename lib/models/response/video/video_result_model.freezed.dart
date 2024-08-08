// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResult _$VideoResultFromJson(Map<String, dynamic> json) {
  return _VideoResult.fromJson(json);
}

/// @nodoc
mixin _$VideoResult {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Video> get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResultCopyWith<VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
          VideoResult value, $Res Function(VideoResult) then) =
      _$VideoResultCopyWithImpl<$Res, VideoResult>;
  @useResult
  $Res call({int id, @JsonKey(name: 'results') List<Video> videos});
}

/// @nodoc
class _$VideoResultCopyWithImpl<$Res, $Val extends VideoResult>
    implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResultImplCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$$VideoResultImplCopyWith(
          _$VideoResultImpl value, $Res Function(_$VideoResultImpl) then) =
      __$$VideoResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'results') List<Video> videos});
}

/// @nodoc
class __$$VideoResultImplCopyWithImpl<$Res>
    extends _$VideoResultCopyWithImpl<$Res, _$VideoResultImpl>
    implements _$$VideoResultImplCopyWith<$Res> {
  __$$VideoResultImplCopyWithImpl(
      _$VideoResultImpl _value, $Res Function(_$VideoResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videos = null,
  }) {
    return _then(_$VideoResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResultImpl extends _VideoResult {
  const _$VideoResultImpl(
      {required this.id,
      @JsonKey(name: 'results') required final List<Video> videos})
      : _videos = videos,
        super._();

  factory _$VideoResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResultImplFromJson(json);

  @override
  final int id;
  final List<Video> _videos;
  @override
  @JsonKey(name: 'results')
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  String toString() {
    return 'VideoResult(id: $id, videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResultImplCopyWith<_$VideoResultImpl> get copyWith =>
      __$$VideoResultImplCopyWithImpl<_$VideoResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResultImplToJson(
      this,
    );
  }
}

abstract class _VideoResult extends VideoResult {
  const factory _VideoResult(
          {required final int id,
          @JsonKey(name: 'results') required final List<Video> videos}) =
      _$VideoResultImpl;
  const _VideoResult._() : super._();

  factory _VideoResult.fromJson(Map<String, dynamic> json) =
      _$VideoResultImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'results')
  List<Video> get videos;
  @override
  @JsonKey(ignore: true)
  _$$VideoResultImplCopyWith<_$VideoResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
