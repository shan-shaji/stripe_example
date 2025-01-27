import 'package:dartz/dartz.dart';
import 'package:stripe_new/core/utils/failure.dart';

abstract class StripeRepository {
  Future<Either<Failure, String>> createPaymentIntent({
    required double amount,
    required String currency,
  });

  Future<Either<Failure, String>> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  });
}
