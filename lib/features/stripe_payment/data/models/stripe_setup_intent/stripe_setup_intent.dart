// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stripe_setup_intent.freezed.dart';
part 'stripe_setup_intent.g.dart';

@freezed
class StripeSetupIntent with _$StripeSetupIntent {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
    fieldRename: FieldRename.snake,
  )
  const factory StripeSetupIntent({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String object,
    @JsonKey(name: 'client_secret', defaultValue: '')
    required String clientSecret,
    @JsonKey(defaultValue: '') required String status,
    @JsonKey(name: 'payment_method_types', defaultValue: [])
    required List<String> paymentMethodTypes,
    @JsonKey(defaultValue: '') required String customer,
    @JsonKey(defaultValue: false) required bool livemode,
    @JsonKey(defaultValue: {}) required Map<String, dynamic> metadata,
    @JsonKey(defaultValue: 0) required int created,
  }) = _StripeSetupIntent;

  factory StripeSetupIntent.fromJson(Map<String, dynamic> json) =>
      _$StripeSetupIntentFromJson(json);
}
