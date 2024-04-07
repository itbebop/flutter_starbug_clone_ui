// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whats_new.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WhatsNew _$WhatsNewFromJson(Map<String, dynamic> json) {
  return _WhatsNew.fromJson(json);
}

/// @nodoc
mixin _$WhatsNew {
  String get ulrPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhatsNewCopyWith<WhatsNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhatsNewCopyWith<$Res> {
  factory $WhatsNewCopyWith(WhatsNew value, $Res Function(WhatsNew) then) =
      _$WhatsNewCopyWithImpl<$Res, WhatsNew>;
  @useResult
  $Res call({String ulrPath, String title, String description});
}

/// @nodoc
class _$WhatsNewCopyWithImpl<$Res, $Val extends WhatsNew>
    implements $WhatsNewCopyWith<$Res> {
  _$WhatsNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulrPath = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      ulrPath: null == ulrPath
          ? _value.ulrPath
          : ulrPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WhatsNewImplCopyWith<$Res>
    implements $WhatsNewCopyWith<$Res> {
  factory _$$WhatsNewImplCopyWith(
          _$WhatsNewImpl value, $Res Function(_$WhatsNewImpl) then) =
      __$$WhatsNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ulrPath, String title, String description});
}

/// @nodoc
class __$$WhatsNewImplCopyWithImpl<$Res>
    extends _$WhatsNewCopyWithImpl<$Res, _$WhatsNewImpl>
    implements _$$WhatsNewImplCopyWith<$Res> {
  __$$WhatsNewImplCopyWithImpl(
      _$WhatsNewImpl _value, $Res Function(_$WhatsNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulrPath = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$WhatsNewImpl(
      ulrPath: null == ulrPath
          ? _value.ulrPath
          : ulrPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhatsNewImpl implements _WhatsNew {
  const _$WhatsNewImpl(
      {required this.ulrPath, required this.title, required this.description});

  factory _$WhatsNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhatsNewImplFromJson(json);

  @override
  final String ulrPath;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'WhatsNew(ulrPath: $ulrPath, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhatsNewImpl &&
            (identical(other.ulrPath, ulrPath) || other.ulrPath == ulrPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ulrPath, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhatsNewImplCopyWith<_$WhatsNewImpl> get copyWith =>
      __$$WhatsNewImplCopyWithImpl<_$WhatsNewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhatsNewImplToJson(
      this,
    );
  }
}

abstract class _WhatsNew implements WhatsNew {
  const factory _WhatsNew(
      {required final String ulrPath,
      required final String title,
      required final String description}) = _$WhatsNewImpl;

  factory _WhatsNew.fromJson(Map<String, dynamic> json) =
      _$WhatsNewImpl.fromJson;

  @override
  String get ulrPath;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$WhatsNewImplCopyWith<_$WhatsNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
