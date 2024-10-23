import 'package:stripe_new/core/utils/either.dart';
import 'package:stripe_new/core/utils/failure.dart';

abstract class StripeRepository {
  /// Creates a PaymentIntent for a one-time payment.
  Future<Either<Failure, String>> createPaymentIntent({
    required double amount,
    required String currency,
  });

  Future<Either<Failure, String>> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  });
}
