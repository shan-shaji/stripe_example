abstract class StripeRemoteDataSource {
  /// Creates a PaymentIntent for a one-time payment.
  Future<String> createPaymentIntent({
    required double amount,
    required String currency,
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });
}
