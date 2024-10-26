// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_setup_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StripeSetupIntent _$StripeSetupIntentFromJson(Map<String, dynamic> json) {
  return _StripeSetupIntent.fromJson(json);
}

/// @nodoc
mixin _$StripeSetupIntent {
  @JsonKey(defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret', defaultValue: '')
  String get clientSecret => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_types', defaultValue: [])
  List<String> get paymentMethodTypes => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get customer => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get livemode => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get created => throw _privateConstructorUsedError;

  /// Serializes this StripeSetupIntent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StripeSetupIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StripeSetupIntentCopyWith<StripeSetupIntent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripeSetupIntentCopyWith<$Res> {
  factory $StripeSetupIntentCopyWith(
          StripeSetupIntent value, $Res Function(StripeSetupIntent) then) =
      _$StripeSetupIntentCopyWithImpl<$Res, StripeSetupIntent>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String object,
      @JsonKey(name: 'client_secret', defaultValue: '') String clientSecret,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      List<String> paymentMethodTypes,
      @JsonKey(defaultValue: '') String customer,
      @JsonKey(defaultValue: false) bool livemode,
      @JsonKey(defaultValue: {}) Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) int created});
}

/// @nodoc
class _$StripeSetupIntentCopyWithImpl<$Res, $Val extends StripeSetupIntent>
    implements $StripeSetupIntentCopyWith<$Res> {
  _$StripeSetupIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StripeSetupIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? clientSecret = null,
    Object? status = null,
    Object? paymentMethodTypes = null,
    Object? customer = null,
    Object? livemode = null,
    Object? metadata = null,
    Object? created = null,
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
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodTypes: null == paymentMethodTypes
          ? _value.paymentMethodTypes
          : paymentMethodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      livemode: null == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StripeSetupIntentImplCopyWith<$Res>
    implements $StripeSetupIntentCopyWith<$Res> {
  factory _$$StripeSetupIntentImplCopyWith(_$StripeSetupIntentImpl value,
          $Res Function(_$StripeSetupIntentImpl) then) =
      __$$StripeSetupIntentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String object,
      @JsonKey(name: 'client_secret', defaultValue: '') String clientSecret,
      @JsonKey(defaultValue: '') String status,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      List<String> paymentMethodTypes,
      @JsonKey(defaultValue: '') String customer,
      @JsonKey(defaultValue: false) bool livemode,
      @JsonKey(defaultValue: {}) Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) int created});
}

/// @nodoc
class __$$StripeSetupIntentImplCopyWithImpl<$Res>
    extends _$StripeSetupIntentCopyWithImpl<$Res, _$StripeSetupIntentImpl>
    implements _$$StripeSetupIntentImplCopyWith<$Res> {
  __$$StripeSetupIntentImplCopyWithImpl(_$StripeSetupIntentImpl _value,
      $Res Function(_$StripeSetupIntentImpl) _then)
      : super(_value, _then);

  /// Create a copy of StripeSetupIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? clientSecret = null,
    Object? status = null,
    Object? paymentMethodTypes = null,
    Object? customer = null,
    Object? livemode = null,
    Object? metadata = null,
    Object? created = null,
  }) {
    return _then(_$StripeSetupIntentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodTypes: null == paymentMethodTypes
          ? _value._paymentMethodTypes
          : paymentMethodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      livemode: null == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class _$StripeSetupIntentImpl implements _StripeSetupIntent {
  const _$StripeSetupIntentImpl(
      {@JsonKey(defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.object,
      @JsonKey(name: 'client_secret', defaultValue: '')
      required this.clientSecret,
      @JsonKey(defaultValue: '') required this.status,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      required final List<String> paymentMethodTypes,
      @JsonKey(defaultValue: '') required this.customer,
      @JsonKey(defaultValue: false) required this.livemode,
      @JsonKey(defaultValue: {}) required final Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0) required this.created})
      : _paymentMethodTypes = paymentMethodTypes,
        _metadata = metadata;

  factory _$StripeSetupIntentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StripeSetupIntentImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String object;
  @override
  @JsonKey(name: 'client_secret', defaultValue: '')
  final String clientSecret;
  @override
  @JsonKey(defaultValue: '')
  final String status;
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
  @JsonKey(defaultValue: '')
  final String customer;
  @override
  @JsonKey(defaultValue: false)
  final bool livemode;
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
  String toString() {
    return 'StripeSetupIntent(id: $id, object: $object, clientSecret: $clientSecret, status: $status, paymentMethodTypes: $paymentMethodTypes, customer: $customer, livemode: $livemode, metadata: $metadata, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StripeSetupIntentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethodTypes, _paymentMethodTypes) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      clientSecret,
      status,
      const DeepCollectionEquality().hash(_paymentMethodTypes),
      customer,
      livemode,
      const DeepCollectionEquality().hash(_metadata),
      created);

  /// Create a copy of StripeSetupIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StripeSetupIntentImplCopyWith<_$StripeSetupIntentImpl> get copyWith =>
      __$$StripeSetupIntentImplCopyWithImpl<_$StripeSetupIntentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StripeSetupIntentImplToJson(
      this,
    );
  }
}

abstract class _StripeSetupIntent implements StripeSetupIntent {
  const factory _StripeSetupIntent(
      {@JsonKey(defaultValue: '') required final String id,
      @JsonKey(defaultValue: '') required final String object,
      @JsonKey(name: 'client_secret', defaultValue: '')
      required final String clientSecret,
      @JsonKey(defaultValue: '') required final String status,
      @JsonKey(name: 'payment_method_types', defaultValue: [])
      required final List<String> paymentMethodTypes,
      @JsonKey(defaultValue: '') required final String customer,
      @JsonKey(defaultValue: false) required final bool livemode,
      @JsonKey(defaultValue: {}) required final Map<String, dynamic> metadata,
      @JsonKey(defaultValue: 0)
      required final int created}) = _$StripeSetupIntentImpl;

  factory _StripeSetupIntent.fromJson(Map<String, dynamic> json) =
      _$StripeSetupIntentImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get object;
  @override
  @JsonKey(name: 'client_secret', defaultValue: '')
  String get clientSecret;
  @override
  @JsonKey(defaultValue: '')
  String get status;
  @override
  @JsonKey(name: 'payment_method_types', defaultValue: [])
  List<String> get paymentMethodTypes;
  @override
  @JsonKey(defaultValue: '')
  String get customer;
  @override
  @JsonKey(defaultValue: false)
  bool get livemode;
  @override
  @JsonKey(defaultValue: {})
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(defaultValue: 0)
  int get created;

  /// Create a copy of StripeSetupIntent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StripeSetupIntentImplCopyWith<_$StripeSetupIntentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
