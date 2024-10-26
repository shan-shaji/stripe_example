import 'package:stripe_new/features/stripe_payment/data/data.dart';

import '../models/models.dart';

abstract class StripeRemoteDataSource {
  /// Creates a PaymentIntent for a one-time payment.
  Future<StripePaymentIntent> createPaymentIntent({
    required double amount,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });

  /// Creates a PaymentIntent for future payment
  Future<StripeSetupIntent> createSetupIntent({
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });
}
