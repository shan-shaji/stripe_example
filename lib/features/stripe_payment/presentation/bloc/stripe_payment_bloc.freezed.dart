// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StripePaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double amount, String currency, PaymentType paymentType)
        payNow,
    required TResult Function(String clientSecret) handlePaymentSheet,
    required TResult Function(
            String clientSecret, String amount, String itemName)
        payWithApplePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult? Function(String clientSecret)? handlePaymentSheet,
    TResult? Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult Function(String clientSecret)? handlePaymentSheet,
    TResult Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayNow value) payNow,
    required TResult Function(HandlePaymentSheet value) handlePaymentSheet,
    required TResult Function(PayWithApplePay value) payWithApplePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayNow value)? payNow,
    TResult? Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult? Function(PayWithApplePay value)? payWithApplePay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayNow value)? payNow,
    TResult Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult Function(PayWithApplePay value)? payWithApplePay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentEventCopyWith<$Res> {
  factory $StripePaymentEventCopyWith(
          StripePaymentEvent value, $Res Function(StripePaymentEvent) then) =
      _$StripePaymentEventCopyWithImpl<$Res, StripePaymentEvent>;
}

/// @nodoc
class _$StripePaymentEventCopyWithImpl<$Res, $Val extends StripePaymentEvent>
    implements $StripePaymentEventCopyWith<$Res> {
  _$StripePaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PayNowImplCopyWith<$Res> {
  factory _$$PayNowImplCopyWith(
          _$PayNowImpl value, $Res Function(_$PayNowImpl) then) =
      __$$PayNowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount, String currency, PaymentType paymentType});
}

/// @nodoc
class __$$PayNowImplCopyWithImpl<$Res>
    extends _$StripePaymentEventCopyWithImpl<$Res, _$PayNowImpl>
    implements _$$PayNowImplCopyWith<$Res> {
  __$$PayNowImplCopyWithImpl(
      _$PayNowImpl _value, $Res Function(_$PayNowImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? paymentType = null,
  }) {
    return _then(_$PayNowImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ));
  }
}

/// @nodoc

class _$PayNowImpl implements PayNow {
  const _$PayNowImpl(
      {required this.amount,
      required this.currency,
      required this.paymentType});

  @override
  final double amount;
  @override
  final String currency;
  @override
  final PaymentType paymentType;

  @override
  String toString() {
    return 'StripePaymentEvent.payNow(amount: $amount, currency: $currency, paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayNowImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, paymentType);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayNowImplCopyWith<_$PayNowImpl> get copyWith =>
      __$$PayNowImplCopyWithImpl<_$PayNowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double amount, String currency, PaymentType paymentType)
        payNow,
    required TResult Function(String clientSecret) handlePaymentSheet,
    required TResult Function(
            String clientSecret, String amount, String itemName)
        payWithApplePay,
  }) {
    return payNow(amount, currency, paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult? Function(String clientSecret)? handlePaymentSheet,
    TResult? Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
  }) {
    return payNow?.call(amount, currency, paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult Function(String clientSecret)? handlePaymentSheet,
    TResult Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
    required TResult orElse(),
  }) {
    if (payNow != null) {
      return payNow(amount, currency, paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayNow value) payNow,
    required TResult Function(HandlePaymentSheet value) handlePaymentSheet,
    required TResult Function(PayWithApplePay value) payWithApplePay,
  }) {
    return payNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayNow value)? payNow,
    TResult? Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult? Function(PayWithApplePay value)? payWithApplePay,
  }) {
    return payNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayNow value)? payNow,
    TResult Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult Function(PayWithApplePay value)? payWithApplePay,
    required TResult orElse(),
  }) {
    if (payNow != null) {
      return payNow(this);
    }
    return orElse();
  }
}

abstract class PayNow implements StripePaymentEvent {
  const factory PayNow(
      {required final double amount,
      required final String currency,
      required final PaymentType paymentType}) = _$PayNowImpl;

  double get amount;
  String get currency;
  PaymentType get paymentType;

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayNowImplCopyWith<_$PayNowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandlePaymentSheetImplCopyWith<$Res> {
  factory _$$HandlePaymentSheetImplCopyWith(_$HandlePaymentSheetImpl value,
          $Res Function(_$HandlePaymentSheetImpl) then) =
      __$$HandlePaymentSheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientSecret});
}

/// @nodoc
class __$$HandlePaymentSheetImplCopyWithImpl<$Res>
    extends _$StripePaymentEventCopyWithImpl<$Res, _$HandlePaymentSheetImpl>
    implements _$$HandlePaymentSheetImplCopyWith<$Res> {
  __$$HandlePaymentSheetImplCopyWithImpl(_$HandlePaymentSheetImpl _value,
      $Res Function(_$HandlePaymentSheetImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientSecret = null,
  }) {
    return _then(_$HandlePaymentSheetImpl(
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HandlePaymentSheetImpl implements HandlePaymentSheet {
  const _$HandlePaymentSheetImpl({required this.clientSecret});

  @override
  final String clientSecret;

  @override
  String toString() {
    return 'StripePaymentEvent.handlePaymentSheet(clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandlePaymentSheetImpl &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientSecret);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandlePaymentSheetImplCopyWith<_$HandlePaymentSheetImpl> get copyWith =>
      __$$HandlePaymentSheetImplCopyWithImpl<_$HandlePaymentSheetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double amount, String currency, PaymentType paymentType)
        payNow,
    required TResult Function(String clientSecret) handlePaymentSheet,
    required TResult Function(
            String clientSecret, String amount, String itemName)
        payWithApplePay,
  }) {
    return handlePaymentSheet(clientSecret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult? Function(String clientSecret)? handlePaymentSheet,
    TResult? Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
  }) {
    return handlePaymentSheet?.call(clientSecret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult Function(String clientSecret)? handlePaymentSheet,
    TResult Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
    required TResult orElse(),
  }) {
    if (handlePaymentSheet != null) {
      return handlePaymentSheet(clientSecret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayNow value) payNow,
    required TResult Function(HandlePaymentSheet value) handlePaymentSheet,
    required TResult Function(PayWithApplePay value) payWithApplePay,
  }) {
    return handlePaymentSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayNow value)? payNow,
    TResult? Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult? Function(PayWithApplePay value)? payWithApplePay,
  }) {
    return handlePaymentSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayNow value)? payNow,
    TResult Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult Function(PayWithApplePay value)? payWithApplePay,
    required TResult orElse(),
  }) {
    if (handlePaymentSheet != null) {
      return handlePaymentSheet(this);
    }
    return orElse();
  }
}

abstract class HandlePaymentSheet implements StripePaymentEvent {
  const factory HandlePaymentSheet({required final String clientSecret}) =
      _$HandlePaymentSheetImpl;

  String get clientSecret;

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandlePaymentSheetImplCopyWith<_$HandlePaymentSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayWithApplePayImplCopyWith<$Res> {
  factory _$$PayWithApplePayImplCopyWith(_$PayWithApplePayImpl value,
          $Res Function(_$PayWithApplePayImpl) then) =
      __$$PayWithApplePayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientSecret, String amount, String itemName});
}

/// @nodoc
class __$$PayWithApplePayImplCopyWithImpl<$Res>
    extends _$StripePaymentEventCopyWithImpl<$Res, _$PayWithApplePayImpl>
    implements _$$PayWithApplePayImplCopyWith<$Res> {
  __$$PayWithApplePayImplCopyWithImpl(
      _$PayWithApplePayImpl _value, $Res Function(_$PayWithApplePayImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientSecret = null,
    Object? amount = null,
    Object? itemName = null,
  }) {
    return _then(_$PayWithApplePayImpl(
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayWithApplePayImpl implements PayWithApplePay {
  const _$PayWithApplePayImpl(
      {required this.clientSecret,
      required this.amount,
      required this.itemName});

  @override
  final String clientSecret;
  @override
  final String amount;
  @override
  final String itemName;

  @override
  String toString() {
    return 'StripePaymentEvent.payWithApplePay(clientSecret: $clientSecret, amount: $amount, itemName: $itemName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayWithApplePayImpl &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientSecret, amount, itemName);

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayWithApplePayImplCopyWith<_$PayWithApplePayImpl> get copyWith =>
      __$$PayWithApplePayImplCopyWithImpl<_$PayWithApplePayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double amount, String currency, PaymentType paymentType)
        payNow,
    required TResult Function(String clientSecret) handlePaymentSheet,
    required TResult Function(
            String clientSecret, String amount, String itemName)
        payWithApplePay,
  }) {
    return payWithApplePay(clientSecret, amount, itemName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult? Function(String clientSecret)? handlePaymentSheet,
    TResult? Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
  }) {
    return payWithApplePay?.call(clientSecret, amount, itemName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, String currency, PaymentType paymentType)?
        payNow,
    TResult Function(String clientSecret)? handlePaymentSheet,
    TResult Function(String clientSecret, String amount, String itemName)?
        payWithApplePay,
    required TResult orElse(),
  }) {
    if (payWithApplePay != null) {
      return payWithApplePay(clientSecret, amount, itemName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayNow value) payNow,
    required TResult Function(HandlePaymentSheet value) handlePaymentSheet,
    required TResult Function(PayWithApplePay value) payWithApplePay,
  }) {
    return payWithApplePay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayNow value)? payNow,
    TResult? Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult? Function(PayWithApplePay value)? payWithApplePay,
  }) {
    return payWithApplePay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayNow value)? payNow,
    TResult Function(HandlePaymentSheet value)? handlePaymentSheet,
    TResult Function(PayWithApplePay value)? payWithApplePay,
    required TResult orElse(),
  }) {
    if (payWithApplePay != null) {
      return payWithApplePay(this);
    }
    return orElse();
  }
}

abstract class PayWithApplePay implements StripePaymentEvent {
  const factory PayWithApplePay(
      {required final String clientSecret,
      required final String amount,
      required final String itemName}) = _$PayWithApplePayImpl;

  String get clientSecret;
  String get amount;
  String get itemName;

  /// Create a copy of StripePaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayWithApplePayImplCopyWith<_$PayWithApplePayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StripePaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paymentSuccess,
    required TResult Function(String error) paymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paymentSuccess,
    TResult? Function(String error)? paymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paymentSuccess,
    TResult Function(String error)? paymentFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentFailed value) paymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentFailed value)? paymentFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentFailed value)? paymentFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentStateCopyWith<$Res> {
  factory $StripePaymentStateCopyWith(
          StripePaymentState value, $Res Function(StripePaymentState) then) =
      _$StripePaymentStateCopyWithImpl<$Res, StripePaymentState>;
}

/// @nodoc
class _$StripePaymentStateCopyWithImpl<$Res, $Val extends StripePaymentState>
    implements $StripePaymentStateCopyWith<$Res> {
  _$StripePaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StripePaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paymentSuccess,
    required TResult Function(String error) paymentFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paymentSuccess,
    TResult? Function(String error)? paymentFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paymentSuccess,
    TResult Function(String error)? paymentFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentFailed value) paymentFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentFailed value)? paymentFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentFailed value)? paymentFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StripePaymentState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StripePaymentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paymentSuccess,
    required TResult Function(String error) paymentFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paymentSuccess,
    TResult? Function(String error)? paymentFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paymentSuccess,
    TResult Function(String error)? paymentFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentFailed value) paymentFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentFailed value)? paymentFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentFailed value)? paymentFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StripePaymentState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$PaymentSuccessImplCopyWith<$Res> {
  factory _$$PaymentSuccessImplCopyWith(_$PaymentSuccessImpl value,
          $Res Function(_$PaymentSuccessImpl) then) =
      __$$PaymentSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentSuccessImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res, _$PaymentSuccessImpl>
    implements _$$PaymentSuccessImplCopyWith<$Res> {
  __$$PaymentSuccessImplCopyWithImpl(
      _$PaymentSuccessImpl _value, $Res Function(_$PaymentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentSuccessImpl implements PaymentSuccess {
  const _$PaymentSuccessImpl();

  @override
  String toString() {
    return 'StripePaymentState.paymentSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paymentSuccess,
    required TResult Function(String error) paymentFailed,
  }) {
    return paymentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paymentSuccess,
    TResult? Function(String error)? paymentFailed,
  }) {
    return paymentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paymentSuccess,
    TResult Function(String error)? paymentFailed,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentFailed value) paymentFailed,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentFailed value)? paymentFailed,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentFailed value)? paymentFailed,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccess implements StripePaymentState {
  const factory PaymentSuccess() = _$PaymentSuccessImpl;
}

/// @nodoc
abstract class _$$PaymentFailedImplCopyWith<$Res> {
  factory _$$PaymentFailedImplCopyWith(
          _$PaymentFailedImpl value, $Res Function(_$PaymentFailedImpl) then) =
      __$$PaymentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PaymentFailedImplCopyWithImpl<$Res>
    extends _$StripePaymentStateCopyWithImpl<$Res, _$PaymentFailedImpl>
    implements _$$PaymentFailedImplCopyWith<$Res> {
  __$$PaymentFailedImplCopyWithImpl(
      _$PaymentFailedImpl _value, $Res Function(_$PaymentFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaymentFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentFailedImpl implements PaymentFailed {
  const _$PaymentFailedImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'StripePaymentState.paymentFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailedImplCopyWith<_$PaymentFailedImpl> get copyWith =>
      __$$PaymentFailedImplCopyWithImpl<_$PaymentFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paymentSuccess,
    required TResult Function(String error) paymentFailed,
  }) {
    return paymentFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paymentSuccess,
    TResult? Function(String error)? paymentFailed,
  }) {
    return paymentFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paymentSuccess,
    TResult Function(String error)? paymentFailed,
    required TResult orElse(),
  }) {
    if (paymentFailed != null) {
      return paymentFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PaymentSuccess value) paymentSuccess,
    required TResult Function(PaymentFailed value) paymentFailed,
  }) {
    return paymentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
    TResult? Function(PaymentFailed value)? paymentFailed,
  }) {
    return paymentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    TResult Function(PaymentFailed value)? paymentFailed,
    required TResult orElse(),
  }) {
    if (paymentFailed != null) {
      return paymentFailed(this);
    }
    return orElse();
  }
}

abstract class PaymentFailed implements StripePaymentState {
  const factory PaymentFailed({required final String error}) =
      _$PaymentFailedImpl;

  String get error;

  /// Create a copy of StripePaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFailedImplCopyWith<_$PaymentFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
