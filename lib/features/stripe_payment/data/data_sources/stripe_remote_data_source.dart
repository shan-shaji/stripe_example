abstract class StripeRemoteDataSource {
  /// Creates a PaymentIntent for a one-time payment.
  Future<String> createPaymentIntent({
    required double amount,
    required String currency,
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });

  /// Creates a PaymentIntent for future payment
  Future<String> createSetupIntent({
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });
}
