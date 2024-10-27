import 'package:stripe_new/features/stripe_payment/data/data.dart';

abstract class StripeRepository {
  Future<StripePaymentIntent> createPaymentIntent({
    required double amount,
  });

  Future<StripeSetupIntent> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  });

  Future<StripePaymentStatus> checkPaymentStatus({
    required String paymentIntentId,
  });
}
