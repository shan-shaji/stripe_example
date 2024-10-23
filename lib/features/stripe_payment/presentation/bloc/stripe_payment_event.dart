part of 'stripe_payment_bloc.dart';

enum PaymentType {
  applePay,
  stripeSheet,
}

@freezed
class StripePaymentEvent with _$StripePaymentEvent {
  const factory StripePaymentEvent.payNow({
    required double amount,
    required String currency,
    required PaymentType paymentType,
  }) = PayNow;

  const factory StripePaymentEvent.handlePaymentSheet({
    required String clientSecret,
  }) = HandlePaymentSheet;

  const factory StripePaymentEvent.payWithApplePay({
    required String clientSecret,
    required String amount,
    required String itemName,
  }) = PayWithApplePay;
}
