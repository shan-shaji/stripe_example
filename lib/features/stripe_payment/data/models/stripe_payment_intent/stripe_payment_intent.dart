// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stripe_payment_intent.freezed.dart';
part 'stripe_payment_intent.g.dart';

@freezed
class StripePaymentIntent with _$StripePaymentIntent {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
    fieldRename: FieldRename.snake,
  )
  const factory StripePaymentIntent({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String object,
    @JsonKey(defaultValue: 0) required int amount,
    @JsonKey(defaultValue: 0) required int amountCapturable,
    @JsonKey(defaultValue: 0) required int amountReceived,
    @JsonKey(defaultValue: '') required String captureMethod,
    @JsonKey(name: 'client_secret', defaultValue: '') required String clientSecret,
    @JsonKey(defaultValue: '') required String confirmationMethod,
    @JsonKey(defaultValue: 0) required int created,
    @JsonKey(defaultValue: '') required String currency,
    @JsonKey(defaultValue: '') required String customer,
    @JsonKey(defaultValue: '') required String status,
    @JsonKey(defaultValue: false) required bool livemode,
    @JsonKey(name: 'payment_method_types', defaultValue: []) required List<String> paymentMethodTypes,
  }) = _StripePaymentIntent;

  factory StripePaymentIntent.fromJson(Map<String, dynamic> json) => _$StripePaymentIntentFromJson(json);
}
