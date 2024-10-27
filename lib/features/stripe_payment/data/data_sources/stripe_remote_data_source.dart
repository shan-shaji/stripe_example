import 'package:stripe_new/features/stripe_payment/data/data.dart';

import '../models/models.dart';

abstract class StripeRemoteDataSource {
  Future<StripePaymentIntent> createPaymentIntent({
    required double amount,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });

  Future<StripeSetupIntent> createSetupIntent({
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  });

  Future<StripePaymentStatus> checkPaymentStatus({
    required String paymentIntentId,
  });
}
