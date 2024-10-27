import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_new/features/stripe_payment/data/data.dart';

class StripeErrorUtils {
  StripeErrorUtils._();

  static const errorMessage = 'We\'re having trouble processing your payment.';

  static String mapStripeFailureCodeToMessage(FailureCode code) {
    return switch (code) {
      FailureCode.Canceled => 'The payment flow has been canceled',
      FailureCode.Failed => errorMessage,
      FailureCode.Timeout => errorMessage,
      FailureCode.Unknown => errorMessage,
    };
  }

  static String mapCheckPaymentStatusFailureCode({
    int? statusCode,
    StripePaymentConfirmation stripePaymentConfirmation =
        StripePaymentConfirmation.initial,
  }) {
    if (stripePaymentConfirmation == StripePaymentConfirmation.success) {
      return '';
    }

    switch (statusCode) {
      case 400:
        return 'It seems there was an issue with your request. '
            'Please check the information you provided and try again.';
      case 404:
        return 'We could not find the payment you are looking for. '
            'Please make sure you entered the correct payment ID and try again.';
      case 500:
        return 'Oops! Something went wrong on our end. '
            'Please try again later or contact support if the problem persists.';
      default:
        if (stripePaymentConfirmation == StripePaymentConfirmation.failed) {
          return 'Unfortunately, we couldn’t process your payment. '
              'Please check your payment details and try again.';
        }
        return errorMessage;
    }
  }
}
