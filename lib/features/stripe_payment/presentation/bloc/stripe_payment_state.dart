part of 'stripe_payment_bloc.dart';

@freezed
class StripePaymentState with _$StripePaymentState {
  const factory StripePaymentState.initial() = Initial;

  const factory StripePaymentState.loading() = Loading;

  const factory StripePaymentState.paymentSuccess() = PaymentSuccess;

  const factory StripePaymentState.paymentFailed({
    required String error,
  }) = PaymentFailed;
}
