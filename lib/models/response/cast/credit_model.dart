// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast_model.dart';

part 'credit_model.freezed.dart';

part 'credit_model.g.dart';

@freezed
class Credit with _$Credit {
  const factory Credit({
    required int id,
    required List<Cast> cast,
  }) = _Credit;

  const Credit._();

  factory Credit.fromJson(Map<String, dynamic> json) => _$CreditFromJson(json);

  factory Credit.empty() => const Credit(
    id: 0,
    cast: <Cast>[],
  );
}
