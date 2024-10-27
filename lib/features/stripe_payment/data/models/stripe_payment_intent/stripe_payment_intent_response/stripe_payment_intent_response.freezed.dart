// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_payment_intent_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StripePaymentIntentResponse _$StripePaymentIntentResponseFromJson(
    Map<String, dynamic> json) {
  return _StripePaymentIntentResponse.fromJson(json);
}

/// @nodoc
mixin _$StripePaymentIntentResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StripePaymentIntent get data => throw _privateConstructorUsedError;

  /// Serializes this StripePaymentIntentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StripePaymentIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StripePaymentIntentResponseCopyWith<StripePaymentIntentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentIntentResponseCopyWith<$Res> {
  factory $StripePaymentIntentResponseCopyWith(
          StripePaymentIntentResponse value,
          $Res Function(StripePaymentIntentResponse) then) =
      _$StripePaymentIntentResponseCopyWithImpl<$Res,
          StripePaymentIntentResponse>;
  @useResult
  $Res call({bool success, String message, StripePaymentIntent data});

  $StripePaymentIntentCopyWith<$Res> get data;
}

/// @nodoc
class _$StripePaymentIntentResponseCopyWithImpl<$Res,
        $Val extends StripePaymentIntentResponse>
    implements $StripePaymentIntentResponseCopyWith<$Res> {
  _$StripePaymentIntentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentIntentResponse
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
              as StripePaymentIntent,
    ) as $Val);
  }

  /// Create a copy of StripePaymentIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StripePaymentIntentCopyWith<$Res> get data {
    return $StripePaymentIntentCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StripePaymentIntentResponseImplCopyWith<$Res>
    implements $StripePaymentIntentResponseCopyWith<$Res> {
  factory _$$StripePaymentIntentResponseImplCopyWith(
          _$StripePaymentIntentResponseImpl value,
          $Res Function(_$StripePaymentIntentResponseImpl) then) =
      __$$StripePaymentIntentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, StripePaymentIntent data});

  @override
  $StripePaymentIntentCopyWith<$Res> get data;
}

/// @nodoc
class __$$StripePaymentIntentResponseImplCopyWithImpl<$Res>
    extends _$StripePaymentIntentResponseCopyWithImpl<$Res,
        _$StripePaymentIntentResponseImpl>
    implements _$$StripePaymentIntentResponseImplCopyWith<$Res> {
  __$$StripePaymentIntentResponseImplCopyWithImpl(
      _$StripePaymentIntentResponseImpl _value,
      $Res Function(_$StripePaymentIntentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$StripePaymentIntentResponseImpl(
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
              as StripePaymentIntent,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$StripePaymentIntentResponseImpl
    implements _StripePaymentIntentResponse {
  const _$StripePaymentIntentResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$StripePaymentIntentResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StripePaymentIntentResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final StripePaymentIntent data;

  @override
  String toString() {
    return 'StripePaymentIntentResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentIntentResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of StripePaymentIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripePaymentIntentResponseImplCopyWith<_$StripePaymentIntentResponseImpl>
      get copyWith => __$$StripePaymentIntentResponseImplCopyWithImpl<
          _$StripePaymentIntentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StripePaymentIntentResponseImplToJson(
      this,
    );
  }
}

abstract class _StripePaymentIntentResponse
    implements StripePaymentIntentResponse {
  const factory _StripePaymentIntentResponse(
          {required final bool success,
          required final String message,
          required final StripePaymentIntent data}) =
      _$StripePaymentIntentResponseImpl;

  factory _StripePaymentIntentResponse.fromJson(Map<String, dynamic> json) =
      _$StripePaymentIntentResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  StripePaymentIntent get data;

  /// Create a copy of StripePaymentIntentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripePaymentIntentResponseImplCopyWith<_$StripePaymentIntentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
