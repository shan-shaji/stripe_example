// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_payment_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StripePaymentStatusImpl _$$StripePaymentStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$StripePaymentStatusImpl(
      stripePaymentConfirmation: $enumDecodeNullable(
              _$StripePaymentConfirmationEnumMap, json['paymentStatus ']) ??
          StripePaymentConfirmation.initial,
    );

Map<String, dynamic> _$$StripePaymentStatusImplToJson(
        _$StripePaymentStatusImpl instance) =>
    <String, dynamic>{
      'paymentStatus ': _$StripePaymentConfirmationEnumMap[
          instance.stripePaymentConfirmation]!,
    };

const _$StripePaymentConfirmationEnumMap = {
  StripePaymentConfirmation.success: 'succeeded',
  StripePaymentConfirmation.failed: 'failed',
  StripePaymentConfirmation.initial: 'initial',
};
