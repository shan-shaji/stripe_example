import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';

class StripeRepositoryImpl implements StripeRepository {
  final StripeRemoteDataSource _stripeRemoteDataSource;

  StripeRepositoryImpl({required StripeRemoteDataSource stripeRemoteDataSource})
      : _stripeRemoteDataSource = stripeRemoteDataSource;

  @override
  Future<StripePaymentIntent> createPaymentIntent({
    required double amount,
  }) async {
    return _stripeRemoteDataSource.createPaymentIntent(
      amount: amount,
      isEnableAutomaticPaymentMethods: true,
    );
  }

  @override
  Future<StripeSetupIntent> createSetupIntent({
    List<String> paymentMethodTypes = const [],
  }) async {
    return _stripeRemoteDataSource.createSetupIntent(
        paymentMethodTypes: paymentMethodTypes);
  }

  @override
  Future<StripePaymentStatus> checkPaymentStatus({
    required String paymentIntentId,
  }) async {
    return _stripeRemoteDataSource.checkPaymentStatus(
        paymentIntentId: paymentIntentId);
  }
}
