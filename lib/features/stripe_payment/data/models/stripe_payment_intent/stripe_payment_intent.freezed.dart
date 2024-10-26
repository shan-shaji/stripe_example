// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_payment_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StripePaymentIntent _$StripePaymentIntentFromJson(Map<String, dynamic> json) {
  return _StripePaymentIntent.fromJson(json);
}

/// @nodoc
mixin _$StripePaymentIntent {
  @JsonKey(defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get object => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get customer => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret', defaultValue: '')
  String get clientSecret => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get created => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get livemode => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_types', defaultValue: [])
  List<String> get paymentMethodTypes => throw _privateConstructorUsedError;

  /// Serializes this StripePaymentIntent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StripePaymentIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StripePaymentIntentCopyWith<StripePaymentIntent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripePaymentIntentCopyWith<$Res> {
  factory $StripePaymentIntentCopyWith(
          StripePaymentIntent value, $Res Function(StripePaymentIntent) then) =
      _$StripePaymentIntentCopyWithImpl<$Res, StripePaymentIntent>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String object,
      @JsonKey(defaultValue: 0) int amount,
      @JsonKey(defaultValue: '') String currency,
      @JsonKey(defaultValue: '') String customer,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(name: 'client_secret', defaultValue: '') String clientSecret,
      @JsonKey(defaultValue: {}) Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) int created,
      @JsonKey(defaultValue: false) bool livemode,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      List<String> paymentMethodTypes});
}

/// @nodoc
class _$StripePaymentIntentCopyWithImpl<$Res, $Val extends StripePaymentIntent>
    implements $StripePaymentIntentCopyWith<$Res> {
  _$StripePaymentIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripePaymentIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? amount = null,
    Object? currency = null,
    Object? customer = null,
    Object? status = null,
    Object? clientSecret = null,
    Object? metadata = null,
    Object? created = null,
    Object? livemode = null,
    Object? paymentMethodTypes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      livemode: null == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethodTypes: null == paymentMethodTypes
          ? _value.paymentMethodTypes
          : paymentMethodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StripePaymentIntentImplCopyWith<$Res>
    implements $StripePaymentIntentCopyWith<$Res> {
  factory _$$StripePaymentIntentImplCopyWith(_$StripePaymentIntentImpl value,
          $Res Function(_$StripePaymentIntentImpl) then) =
      __$$StripePaymentIntentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String object,
      @JsonKey(defaultValue: 0) int amount,
      @JsonKey(defaultValue: '') String currency,
      @JsonKey(defaultValue: '') String customer,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(name: 'client_secret', defaultValue: '') String clientSecret,
      @JsonKey(defaultValue: {}) Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) int created,
      @JsonKey(defaultValue: false) bool livemode,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      List<String> paymentMethodTypes});
}

/// @nodoc
class __$$StripePaymentIntentImplCopyWithImpl<$Res>
    extends _$StripePaymentIntentCopyWithImpl<$Res, _$StripePaymentIntentImpl>
    implements _$$StripePaymentIntentImplCopyWith<$Res> {
  __$$StripePaymentIntentImplCopyWithImpl(_$StripePaymentIntentImpl _value,
      $Res Function(_$StripePaymentIntentImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripePaymentIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? amount = null,
    Object? currency = null,
    Object? customer = null,
    Object? status = null,
    Object? clientSecret = null,
    Object? metadata = null,
    Object? created = null,
    Object? livemode = null,
    Object? paymentMethodTypes = null,
  }) {
    return _then(_$StripePaymentIntentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      livemode: null == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethodTypes: null == paymentMethodTypes
          ? _value._paymentMethodTypes
          : paymentMethodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class _$StripePaymentIntentImpl implements _StripePaymentIntent {
  const _$StripePaymentIntentImpl(
      {@JsonKey(defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.object,
      @JsonKey(defaultValue: 0) required this.amount,
      @JsonKey(defaultValue: '') required this.currency,
      @JsonKey(defaultValue: '') required this.customer,
      @JsonKey(defaultValue: '') required this.status,
      @JsonKey(name: 'client_secret', defaultValue: '')
      required this.clientSecret,
      @JsonKey(defaultValue: {}) required final Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) required this.created,
      @JsonKey(defaultValue: false) required this.livemode,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      required final List<String> paymentMethodTypes})
      : _metadata = metadata,
        _paymentMethodTypes = paymentMethodTypes;

  factory _$StripePaymentIntentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StripePaymentIntentImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String object;
  @override
  @JsonKey(defaultValue: 0)
  final int amount;
  @override
  @JsonKey(defaultValue: '')
  final String currency;
  @override
  @JsonKey(defaultValue: '')
  final String customer;
  @override
  @JsonKey(defaultValue: '')
  final String status;
  @override
  @JsonKey(name: 'client_secret', defaultValue: '')
  final String clientSecret;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey(defaultValue: {})
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  @JsonKey(defaultValue: 0)
  final int created;
  @override
  @JsonKey(defaultValue: false)
  final bool livemode;
  final List<String> _paymentMethodTypes;
  @override
  @JsonKey(name: 'payment_method_types', defaultValue: [])
  List<String> get paymentMethodTypes {
    if (_paymentMethodTypes is EqualUnmodifiableListView)
      return _paymentMethodTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethodTypes);
  }

  @override
  String toString() {
    return 'StripePaymentIntent(id: $id, object: $object, amount: $amount, currency: $currency, customer: $customer, status: $status, clientSecret: $clientSecret, metadata: $metadata, created: $created, livemode: $livemode, paymentMethodTypes: $paymentMethodTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripePaymentIntentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethodTypes, _paymentMethodTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      amount,
      currency,
      customer,
      status,
      clientSecret,
      const DeepCollectionEquality().hash(_metadata),
      created,
      livemode,
      const DeepCollectionEquality().hash(_paymentMethodTypes));

  /// Create a copy of StripePaymentIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripePaymentIntentImplCopyWith<_$StripePaymentIntentImpl> get copyWith =>
      __$$StripePaymentIntentImplCopyWithImpl<_$StripePaymentIntentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StripePaymentIntentImplToJson(
      this,
    );
  }
}

abstract class _StripePaymentIntent implements StripePaymentIntent {
  const factory _StripePaymentIntent(
      {@JsonKey(defaultValue: '') required final String id,
      @JsonKey(defaultValue: '') required final String object,
      @JsonKey(defaultValue: 0) required final int amount,
      @JsonKey(defaultValue: '') required final String currency,
      @JsonKey(defaultValue: '') required final String customer,
      @JsonKey(defaultValue: '') required final String status,
      @JsonKey(name: 'client_secret', defaultValue: '')
      required final String clientSecret,
      @JsonKey(defaultValue: {}) required final Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) required final int created,
      @JsonKey(defaultValue: false) required final bool livemode,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      required final List<String>
          paymentMethodTypes}) = _$StripePaymentIntentImpl;

  factory _StripePaymentIntent.fromJson(Map<String, dynamic> json) =
      _$StripePaymentIntentImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get object;
  @override
  @JsonKey(defaultValue: 0)
  int get amount;
  @override
  @JsonKey(defaultValue: '')
  String get currency;
  @override
  @JsonKey(defaultValue: '')
  String get customer;
  @override
  @JsonKey(defaultValue: '')
  String get status;
  @override
  @JsonKey(name: 'client_secret', defaultValue: '')
  String get clientSecret;
  @override
  @JsonKey(defaultValue: {})
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(defaultValue: 0)
  int get created;
  @override
  @JsonKey(defaultValue: false)
  bool get livemode;
  @override
  @JsonKey(name: 'payment_method_types', defaultValue: [])
  List<String> get paymentMethodTypes;

  /// Create a copy of StripePaymentIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripePaymentIntentImplCopyWith<_$StripePaymentIntentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
