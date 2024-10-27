// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_payment_intent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StripePaymentIntentResponseImpl _$$StripePaymentIntentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StripePaymentIntentResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: StripePaymentIntent.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StripePaymentIntentResponseImplToJson(
        _$StripePaymentIntentResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data.toJson(),
    };
