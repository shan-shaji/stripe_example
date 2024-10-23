import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/core/extensions/repository_extension.dart';
import 'package:stripe_new/core/utils/either.dart';
import 'package:stripe_new/core/utils/failure.dart';

class StripeRepositoryImpl implements StripeRepository {
  final StripeRemoteDataSource _stripeRemoteDataSource;

  StripeRepositoryImpl({required StripeRemoteDataSource stripeRemoteDataSource})
      : _stripeRemoteDataSource = stripeRemoteDataSource;

  @override
  Future<Either<Failure, String>> createPaymentIntent({
    required double amount,
    required String currency,
  }) async {
    final response = await _stripeRemoteDataSource
        .createPaymentIntent(
          amount: amount,
          currency: currency,
          isEnableAutomaticPaymentMethods: true,
        )
        .makeRequest();
    return response;
  }

  @override
  Future<Either<Failure, String>> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  }) async {
    final response = await _stripeRemoteDataSource
        .createSetupIntent(paymentMethodTypes: paymentMethodTypes)
        .makeRequest();
    return response;
  }
}
