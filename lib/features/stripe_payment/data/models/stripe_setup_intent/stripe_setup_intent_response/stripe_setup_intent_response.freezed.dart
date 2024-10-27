// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_setup_intent_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StripeSetupIntentResponse _$StripeSetupIntentResponseFromJson(
    Map<String, dynamic> json) {
  return _StripeSetupIntentResponse.fromJson(json);
}

/// @nodoc
mixin _$StripeSetupIntentResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StripeSetupIntent get data => throw _privateConstructorUsedError;

  /// Serializes this StripeSetupIntentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StripeSetupIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StripeSetupIntentResponseCopyWith<StripeSetupIntentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripeSetupIntentResponseCopyWith<$Res> {
  factory $StripeSetupIntentResponseCopyWith(StripeSetupIntentResponse value,
          $Res Function(StripeSetupIntentResponse) then) =
      _$StripeSetupIntentResponseCopyWithImpl<$Res, StripeSetupIntentResponse>;
  @useResult
  $Res call({bool success, String message, StripeSetupIntent data});

  $StripeSetupIntentCopyWith<$Res> get data;
}

/// @nodoc
class _$StripeSetupIntentResponseCopyWithImpl<$Res,
        $Val extends StripeSetupIntentResponse>
    implements $StripeSetupIntentResponseCopyWith<$Res> {
  _$StripeSetupIntentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripeSetupIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StripeSetupIntent,
    ) as $Val);
  }

  /// Create a copy of StripeSetupIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StripeSetupIntentCopyWith<$Res> get data {
    return $StripeSetupIntentCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StripeSetupIntentResponseImplCopyWith<$Res>
    implements $StripeSetupIntentResponseCopyWith<$Res> {
  factory _$$StripeSetupIntentResponseImplCopyWith(
          _$StripeSetupIntentResponseImpl value,
          $Res Function(_$StripeSetupIntentResponseImpl) then) =
      __$$StripeSetupIntentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, StripeSetupIntent data});

  @override
  $StripeSetupIntentCopyWith<$Res> get data;
}

/// @nodoc
class __$$StripeSetupIntentResponseImplCopyWithImpl<$Res>
    extends _$StripeSetupIntentResponseCopyWithImpl<$Res,
        _$StripeSetupIntentResponseImpl>
    implements _$$StripeSetupIntentResponseImplCopyWith<$Res> {
  __$$StripeSetupIntentResponseImplCopyWithImpl(
      _$StripeSetupIntentResponseImpl _value,
      $Res Function(_$StripeSetupIntentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripeSetupIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$StripeSetupIntentResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StripeSetupIntent,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class _$StripeSetupIntentResponseImpl implements _StripeSetupIntentResponse {
  const _$StripeSetupIntentResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$StripeSetupIntentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StripeSetupIntentResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final StripeSetupIntent data;

  @override
  String toString() {
    return 'StripeSetupIntentResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripeSetupIntentResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of StripeSetupIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripeSetupIntentResponseImplCopyWith<_$StripeSetupIntentResponseImpl>
      get copyWith => __$$StripeSetupIntentResponseImplCopyWithImpl<
          _$StripeSetupIntentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StripeSetupIntentResponseImplToJson(
      this,
    );
  }
}

abstract class _StripeSetupIntentResponse implements StripeSetupIntentResponse {
  const factory _StripeSetupIntentResponse(
      {required final bool success,
      required final String message,
      required final StripeSetupIntent data}) = _$StripeSetupIntentResponseImpl;

  factory _StripeSetupIntentResponse.fromJson(Map<String, dynamic> json) =
      _$StripeSetupIntentResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  StripeSetupIntent get data;

  /// Create a copy of StripeSetupIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripeSetupIntentResponseImplCopyWith<_$StripeSetupIntentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
