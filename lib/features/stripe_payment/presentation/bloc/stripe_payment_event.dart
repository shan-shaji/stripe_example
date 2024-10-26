part of 'stripe_payment_bloc.dart';

enum PaymentType {
  payNow,
  payLater,
}

@freezed
class StripePaymentEvent with _$StripePaymentEvent {
  const factory StripePaymentEvent.payNow({
    required double amount,
    required String currency,
  }) = PayNow;

  const factory StripePaymentEvent.handlePaymentSheet({
    required String clientSecret,
    required PaymentType paymentType,
    required String currency,
    required String stripeIntentId,
  }) = HandlePaymentSheet;

  const factory StripePaymentEvent.payLater() = PayLater;
}
