// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stripe_new/features/stripe_payment/data/models/stripe_setup_intent/stripe_setup_intent.dart';

part 'stripe_setup_intent_response.freezed.dart';
part 'stripe_setup_intent_response.g.dart';

@freezed
class StripeSetupIntentResponse with _$StripeSetupIntentResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
    fieldRename: FieldRename.snake,
  )
  const factory StripeSetupIntentResponse({
    required bool success,
    required String message,
    required StripeSetupIntent data,
  }) = _StripeSetupIntentResponse;

  factory StripeSetupIntentResponse.fromJson(Map<String, dynamic> json) =>
      _$StripeSetupIntentResponseFromJson(json);
}
