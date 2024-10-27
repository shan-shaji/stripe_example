import 'package:stripe_new/core/extensions/repository_extension.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/core/utils/either.dart';
import 'package:stripe_new/core/utils/failure.dart';

class CreatePaymentIntentUseCase {
  final StripeRepository _stripeRepository;

  CreatePaymentIntentUseCase(this._stripeRepository);

  Future<Either<Failure, StripePaymentIntent>> call({
    required double amount,
  }) async {
    final response =
        _stripeRepository.createPaymentIntent(amount: amount).makeRequest();
    return response;
  }
}
