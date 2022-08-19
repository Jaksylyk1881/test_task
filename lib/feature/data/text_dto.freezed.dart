// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextDTO _$TextDTOFromJson(Map<String, dynamic> json) {
  return _TextDTO.fromJson(json);
}

/// @nodoc
mixin _$TextDTO {
  @JsonKey(name: "text_name")
  String? get textName => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDTOCopyWith<TextDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDTOCopyWith<$Res> {
  factory $TextDTOCopyWith(TextDTO value, $Res Function(TextDTO) then) =
      _$TextDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "text_name") String? textName, String? text});
}

/// @nodoc
class _$TextDTOCopyWithImpl<$Res> implements $TextDTOCopyWith<$Res> {
  _$TextDTOCopyWithImpl(this._value, this._then);

  final TextDTO _value;
  // ignore: unused_field
  final $Res Function(TextDTO) _then;

  @override
  $Res call({
    Object? textName = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      textName: textName == freezed
          ? _value.textName
          : textName // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TextDTOCopyWith<$Res> implements $TextDTOCopyWith<$Res> {
  factory _$$_TextDTOCopyWith(
          _$_TextDTO value, $Res Function(_$_TextDTO) then) =
      __$$_TextDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "text_name") String? textName, String? text});
}

/// @nodoc
class __$$_TextDTOCopyWithImpl<$Res> extends _$TextDTOCopyWithImpl<$Res>
    implements _$$_TextDTOCopyWith<$Res> {
  __$$_TextDTOCopyWithImpl(_$_TextDTO _value, $Res Function(_$_TextDTO) _then)
      : super(_value, (v) => _then(v as _$_TextDTO));

  @override
  _$_TextDTO get _value => super._value as _$_TextDTO;

  @override
  $Res call({
    Object? textName = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_TextDTO(
      textName: textName == freezed
          ? _value.textName
          : textName // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextDTO implements _TextDTO {
  const _$_TextDTO({@JsonKey(name: "text_name") this.textName, this.text});

  factory _$_TextDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TextDTOFromJson(json);

  @override
  @JsonKey(name: "text_name")
  final String? textName;
  @override
  final String? text;

  @override
  String toString() {
    return 'TextDTO(textName: $textName, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextDTO &&
            const DeepCollectionEquality().equals(other.textName, textName) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(textName),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_TextDTOCopyWith<_$_TextDTO> get copyWith =>
      __$$_TextDTOCopyWithImpl<_$_TextDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextDTOToJson(
      this,
    );
  }
}

abstract class _TextDTO implements TextDTO {
  const factory _TextDTO(
      {@JsonKey(name: "text_name") final String? textName,
      final String? text}) = _$_TextDTO;

  factory _TextDTO.fromJson(Map<String, dynamic> json) = _$_TextDTO.fromJson;

  @override
  @JsonKey(name: "text_name")
  String? get textName;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_TextDTOCopyWith<_$_TextDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
