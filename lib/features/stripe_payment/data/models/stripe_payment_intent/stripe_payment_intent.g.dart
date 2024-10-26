// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_payment_intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StripePaymentIntentImpl _$$StripePaymentIntentImplFromJson(
        Map<String, dynamic> json) =>
    _$StripePaymentIntentImpl(
      id: json['id'] as String? ?? '',
      object: json['object'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String? ?? '',
      customer: json['customer'] as String? ?? '',
      status: json['status'] as String? ?? '',
      clientSecret: json['client_secret'] as String? ?? '',
      metadata: json['metadata'] as Map<String, dynamic>? ?? {},
      created: (json['created'] as num?)?.toInt() ?? 0,
      livemode: json['livemode'] as bool? ?? false,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$StripePaymentIntentImplToJson(
        _$StripePaymentIntentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'amount': instance.amount,
      'currency': instance.currency,
      'customer': instance.customer,
      'status': instance.status,
      'client_secret': instance.clientSecret,
      'metadata': instance.metadata,
      'created': instance.created,
      'livemode': instance.livemode,
      'payment_method_types': instance.paymentMethodTypes,
    };
