abstract class StripeRemoteDataSource {
  Future<String> createPaymentIntent({
    required double amount,
    required String currency,
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });

  Future<String> createSetupIntent({
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });
}
