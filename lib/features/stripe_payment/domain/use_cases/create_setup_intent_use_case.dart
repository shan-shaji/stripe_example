import 'package:dartz/dartz.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/core/utils/failure.dart';

class CreateSetupIntentUseCase {
  final StripeRepository _stripeRepository;

  CreateSetupIntentUseCase(this._stripeRepository);

  Future<Either<Failure, String>> call({
    List<String> paymentMethodTypes = const [],
  }) async {
    return _stripeRepository.createSetupIntent(
      paymentMethodTypes: paymentMethodTypes,
    );
  }
}
