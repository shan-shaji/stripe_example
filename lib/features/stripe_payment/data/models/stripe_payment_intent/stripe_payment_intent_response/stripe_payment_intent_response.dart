// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stripe_new/features/stripe_payment/data/models/stripe_payment_intent/stripe_payment_intent.dart';

part 'stripe_payment_intent_response.freezed.dart';
part 'stripe_payment_intent_response.g.dart';

@freezed
class StripePaymentIntentResponse with _$StripePaymentIntentResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory StripePaymentIntentResponse({
    required bool success,
    required String message,
    required StripePaymentIntent data,
  }) = _StripePaymentIntentResponse;

  factory StripePaymentIntentResponse.fromJson(Map<String, dynamic> json) =>
      _$StripePaymentIntentResponseFromJson(json);
}
