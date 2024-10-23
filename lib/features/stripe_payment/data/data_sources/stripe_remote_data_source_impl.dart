import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stripe_new/features/stripe_payment/data/client/stripe_client.dart';
import 'package:stripe_new/features/stripe_payment/data/data_sources/stripe_remote_data_source.dart';

class StripRemoteDataSourceImpl implements StripeRemoteDataSource {
  final StripeClient stripeClient;

  StripRemoteDataSourceImpl({required this.stripeClient});

  // Multiply by 100 to convert the amount from euros to cents for Stripe payment processing
  final int _centsConversionFactor = 100;

  @override
  Future<String> createPaymentIntent({
    required double amount,
    required String currency,
    String? customerId,
    bool isEnableAutomaticPaymentMethods = false,
    List<String> paymentMethodTypes = const [],
  }) async {
    final stripeAmount = (amount * _centsConversionFactor).toInt();
    final Map<String, dynamic> request = {
      'amount': '$stripeAmount',
      'currency': currency,
    };

    if (isEnableAutomaticPaymentMethods) {
      request.addAll({
        'automatic_payment_methods[enabled]': true,
      });
    }

    if (paymentMethodTypes.isNotEmpty && !isEnableAutomaticPaymentMethods) {
      request.addAll({
        'payment_method_types': paymentMethodTypes,
      });
    }

    final stripeSecret = dotenv.env['STRIPE_SECRET'];
    final response = await stripeClient.createPaymentIntent(
      request,
      'Bearer $stripeSecret',
    );
    final data = jsonDecode(response);
    final clientSecret = data['client_secret'];

    return clientSecret;
  }
}
