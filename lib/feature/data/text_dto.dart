// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_dto.freezed.dart';
part 'text_dto.g.dart';

@freezed
class TextDTO with _$TextDTO {
  const factory TextDTO({
    @JsonKey(name: "text_name") String? textName,
    String? text,
  }) = _TextDTO;

  factory TextDTO.fromJson(Map<String, dynamic> json) =>
      _$TextDTOFromJson(json);
}
