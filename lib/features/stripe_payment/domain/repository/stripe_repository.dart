import 'package:stripe_new/core/utils/either.dart';
import 'package:stripe_new/core/utils/failure.dart';
import 'package:stripe_new/features/stripe_payment/data/data.dart';

abstract class StripeRepository {
  /// Creates a PaymentIntent for a one-time payment.
  Future<Either<Failure, StripePaymentIntent>> createPaymentIntent({
    required double amount,
  });

  Future<Either<Failure, StripeSetupIntent>> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  });
}
