// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_payment_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StripePaymentStatus _$StripePaymentStatusFromJson(Map<String, dynamic> json) {
  return _StripePaymentStatus.fromJson(json);
}

/// @nodoc
mixin _$StripePaymentStatus {
  @JsonKey(
      defaultValue: StripePaymentConfirmation.initial, name: 'paymentStatus ')
  StripePaymentConfirmation get stripePaymentConfirmation =>
      throw _privateConstructorUsedError;

  /// Serializes this StripePaymentStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StripePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StripePaymentStatusCopyWith<StripePaymentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentStatusCopyWith<$Res> {
  factory $StripePaymentStatusCopyWith(
          StripePaymentStatus value, $Res Function(StripePaymentStatus) then) =
      _$StripePaymentStatusCopyWithImpl<$Res, StripePaymentStatus>;
  @useResult
  $Res call(
      {@JsonKey(
          defaultValue: StripePaymentConfirmation.initial,
          name: 'paymentStatus ')
      StripePaymentConfirmation stripePaymentConfirmation});
}

/// @nodoc
class _$StripePaymentStatusCopyWithImpl<$Res, $Val extends StripePaymentStatus>
    implements $StripePaymentStatusCopyWith<$Res> {
  _$StripePaymentStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stripePaymentConfirmation = null,
  }) {
    return _then(_value.copyWith(
      stripePaymentConfirmation: null == stripePaymentConfirmation
          ? _value.stripePaymentConfirmation
          : stripePaymentConfirmation // ignore: cast_nullable_to_non_nullable
              as StripePaymentConfirmation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StripePaymentStatusImplCopyWith<$Res>
    implements $StripePaymentStatusCopyWith<$Res> {
  factory _$$StripePaymentStatusImplCopyWith(_$StripePaymentStatusImpl value,
          $Res Function(_$StripePaymentStatusImpl) then) =
      __$$StripePaymentStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          defaultValue: StripePaymentConfirmation.initial,
          name: 'paymentStatus ')
      StripePaymentConfirmation stripePaymentConfirmation});
}

/// @nodoc
class __$$StripePaymentStatusImplCopyWithImpl<$Res>
    extends _$StripePaymentStatusCopyWithImpl<$Res, _$StripePaymentStatusImpl>
    implements _$$StripePaymentStatusImplCopyWith<$Res> {
  __$$StripePaymentStatusImplCopyWithImpl(_$StripePaymentStatusImpl _value,
      $Res Function(_$StripePaymentStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stripePaymentConfirmation = null,
  }) {
    return _then(_$StripePaymentStatusImpl(
      stripePaymentConfirmation: null == stripePaymentConfirmation
          ? _value.stripePaymentConfirmation
          : stripePaymentConfirmation // ignore: cast_nullable_to_non_nullable
              as StripePaymentConfirmation,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$StripePaymentStatusImpl implements _StripePaymentStatus {
  const _$StripePaymentStatusImpl(
      {@JsonKey(
          defaultValue: StripePaymentConfirmation.initial,
          name: 'paymentStatus ')
      required this.stripePaymentConfirmation});

  factory _$StripePaymentStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StripePaymentStatusImplFromJson(json);

  @override
  @JsonKey(
      defaultValue: StripePaymentConfirmation.initial, name: 'paymentStatus ')
  final StripePaymentConfirmation stripePaymentConfirmation;

  @override
  String toString() {
    return 'StripePaymentStatus(stripePaymentConfirmation: $stripePaymentConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentStatusImpl &&
            (identical(other.stripePaymentConfirmation,
                    stripePaymentConfirmation) ||
                other.stripePaymentConfirmation == stripePaymentConfirmation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stripePaymentConfirmation);

  /// Create a copy of StripePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripePaymentStatusImplCopyWith<_$StripePaymentStatusImpl> get copyWith =>
      __$$StripePaymentStatusImplCopyWithImpl<_$StripePaymentStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StripePaymentStatusImplToJson(
      this,
    );
  }
}

abstract class _StripePaymentStatus implements StripePaymentStatus {
  const factory _StripePaymentStatus(
          {@JsonKey(
              defaultValue: StripePaymentConfirmation.initial,
              name: 'paymentStatus ')
          required final StripePaymentConfirmation stripePaymentConfirmation}) =
      _$StripePaymentStatusImpl;

  factory _StripePaymentStatus.fromJson(Map<String, dynamic> json) =
      _$StripePaymentStatusImpl.fromJson;

  @override
  @JsonKey(
      defaultValue: StripePaymentConfirmation.initial, name: 'paymentStatus ')
  StripePaymentConfirmation get stripePaymentConfirmation;

  /// Create a copy of StripePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripePaymentStatusImplCopyWith<_$StripePaymentStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
