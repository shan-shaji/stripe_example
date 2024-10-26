// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_setup_intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StripeSetupIntentImpl _$$StripeSetupIntentImplFromJson(
        Map<String, dynamic> json) =>
    _$StripeSetupIntentImpl(
      id: json['id'] as String? ?? '',
      object: json['object'] as String? ?? '',
      clientSecret: json['client_secret'] as String? ?? '',
      status: json['status'] as String? ?? '',
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      customer: json['customer'] as String? ?? '',
      livemode: json['livemode'] as bool? ?? false,
      metadata: json['metadata'] as Map<String, dynamic>? ?? {},
      created: (json['created'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StripeSetupIntentImplToJson(
        _$StripeSetupIntentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'client_secret': instance.clientSecret,
      'status': instance.status,
      'payment_method_types': instance.paymentMethodTypes,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'created': instance.created,
    };
