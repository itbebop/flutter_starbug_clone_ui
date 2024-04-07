import 'package:freezed_annotation/freezed_annotation.dart';

part 'whats_new.freezed.dart';
part 'whats_new.g.dart';

@freezed
class WhatsNew with _$WhatsNew {
  const factory WhatsNew({
    required String ulrPath,
    required String title,
    required String description,
  }) = _WhatsNew;

  factory WhatsNew.fromJson(Map<String, dynamic> json) => _$WhatsNewFromJson(json);
}
