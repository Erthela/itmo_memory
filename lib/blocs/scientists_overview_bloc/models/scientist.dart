import 'package:freezed_annotation/freezed_annotation.dart';

part 'scientist.freezed.dart';
part 'scientist.g.dart';

@freezed
class Scientist with _$Scientist {
  const factory Scientist({
    required String date,
    required String id,
    required String img,
    required String name,
    required String text,
  }) = _Scientist;

  factory Scientist.fromJson(Map<String, dynamic> json) => _$ScientistFromJson(json);
}
