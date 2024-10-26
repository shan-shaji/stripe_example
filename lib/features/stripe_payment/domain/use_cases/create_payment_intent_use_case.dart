import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/core/utils/either.dart';
import 'package:stripe_new/core/utils/failure.dart';

class CreatePaymentIntentUseCase {
  final StripeRepository _stripeRepository;

  CreatePaymentIntentUseCase(this._stripeRepository);

  Future<Either<Failure, StripePaymentIntent>> call({
    required double amount,
  }) async {
    return _stripeRepository.createPaymentIntent(amount: amount);
  }
}
