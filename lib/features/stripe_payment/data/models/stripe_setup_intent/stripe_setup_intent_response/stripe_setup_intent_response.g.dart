// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_setup_intent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StripeSetupIntentResponseImpl _$$StripeSetupIntentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StripeSetupIntentResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: StripeSetupIntent.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StripeSetupIntentResponseImplToJson(
        _$StripeSetupIntentResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data.toJson(),
    };
