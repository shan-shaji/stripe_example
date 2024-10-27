import 'package:stripe_new/core/extensions/repository_extension.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/features/stripe_payment/utils/stripe_error_utils.dart';

class CheckPaymentStatusUseCase {
  final StripeRepository _stripeRepository;

  CheckPaymentStatusUseCase(this._stripeRepository);

  Future<(String, StripePaymentStatus?)> call({
    required String paymentIntentId,
  }) async {
    final response = await _stripeRepository
        .checkPaymentStatus(paymentIntentId: paymentIntentId)
        .makeRequest();

    return response.fold(
      (error) {
        final errorMessage = StripeErrorUtils.mapCheckPaymentStatusFailureCode(
            statusCode: error.statusCode);
        return (errorMessage, null);
      },
      (stripePaymentStatus) {
        final errorMessage = StripeErrorUtils.mapCheckPaymentStatusFailureCode(
          stripePaymentConfirmation:
              stripePaymentStatus.stripePaymentConfirmation,
        );
        return (errorMessage, stripePaymentStatus);
      },
    );
  }
}
