import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/core/extensions/repository_extension.dart';
import 'package:stripe_new/core/utils/either.dart';
import 'package:stripe_new/core/utils/failure.dart';

class StripeRepositoryImpl implements StripeRepository {
  final StripeRemoteDataSource _stripeRemoteDataSource;

  StripeRepositoryImpl({required StripeRemoteDataSource stripeRemoteDataSource})
      : _stripeRemoteDataSource = stripeRemoteDataSource;

  @override
  Future<Either<Failure, StripePaymentIntent>> createPaymentIntent({
    required double amount,
  }) async {
    final response = await _stripeRemoteDataSource
        .createPaymentIntent(
          amount: amount,
          isEnableAutomaticPaymentMethods: true,
        )
        .makeRequest();
    return response;
  }

  @override
  Future<Either<Failure, StripeSetupIntent>> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  }) async {
    final response = await _stripeRemoteDataSource
        .createSetupIntent(paymentMethodTypes: paymentMethodTypes)
        .makeRequest();
    return response;
  }
}
