import 'package:freezed_annotation/freezed_annotation.dart';

part 'invention.freezed.dart';
part 'invention.g.dart';

@freezed
class Invention with _$Invention {
  const factory Invention({
    required List<String> img_urls,
    required String name,
    required String text,
  }) = _Invention;

  factory Invention.fromJson(Map<String, dynamic> json) => _$InventionFromJson(json);
}
