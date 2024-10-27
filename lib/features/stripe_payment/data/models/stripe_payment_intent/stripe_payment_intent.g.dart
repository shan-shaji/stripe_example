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
      amountCapturable: (json['amount_capturable'] as num?)?.toInt() ?? 0,
      amountReceived: (json['amount_received'] as num?)?.toInt() ?? 0,
      captureMethod: json['capture_method'] as String? ?? '',
      clientSecret: json['client_secret'] as String? ?? '',
      confirmationMethod: json['confirmation_method'] as String? ?? '',
      created: (json['created'] as num?)?.toInt() ?? 0,
      currency: json['currency'] as String? ?? '',
      customer: json['customer'] as String? ?? '',
      status: json['status'] as String? ?? '',
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
      'amount_capturable': instance.amountCapturable,
      'amount_received': instance.amountReceived,
      'capture_method': instance.captureMethod,
      'client_secret': instance.clientSecret,
      'confirmation_method': instance.confirmationMethod,
      'created': instance.created,
      'currency': instance.currency,
      'customer': instance.customer,
      'status': instance.status,
      'livemode': instance.livemode,
      'payment_method_types': instance.paymentMethodTypes,
    };
