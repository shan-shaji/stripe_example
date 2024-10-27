// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stripe_payment_status.freezed.dart';
part 'stripe_payment_status.g.dart';

enum StripePaymentConfirmation {
  @JsonValue('succeeded')
  success,

  @JsonValue('failed')
  failed,

  @JsonValue('initial')
  initial,
}

@freezed
class StripePaymentStatus with _$StripePaymentStatus {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory StripePaymentStatus({
    @JsonKey(
        defaultValue: StripePaymentConfirmation.initial, name: 'paymentStatus')
    required StripePaymentConfirmation stripePaymentConfirmation,
  }) = _StripePaymentStatus;

  factory StripePaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$StripePaymentStatusFromJson(json);
}
