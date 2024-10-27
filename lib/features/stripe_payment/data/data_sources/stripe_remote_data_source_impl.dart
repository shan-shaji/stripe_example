import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stripe_new/features/stripe_payment/data/client/stripe_client.dart';
import 'package:stripe_new/features/stripe_payment/data/data_sources/stripe_remote_data_source.dart';
import 'package:stripe_new/features/stripe_payment/data/models/models.dart';

class StripRemoteDataSourceImpl implements StripeRemoteDataSource {
  final StripeClient stripeClient;

  StripRemoteDataSourceImpl({required this.stripeClient});

  @override
  Future<StripePaymentIntent> createPaymentIntent({
    required double amount,
    String? customerId,
    bool isEnableAutomaticPaymentMethods = true,
    List<String> paymentMethodTypes = const [],
  }) async {
    final Map<String, dynamic> request = {
      'amount': amount,
      'enableAutomaticPaymentMethods': isEnableAutomaticPaymentMethods,
    };

    if (paymentMethodTypes.isNotEmpty) {
      request.addAll({
        'paymentMethodTypes': paymentMethodTypes,
      });
    }

    final stripeSecret = dotenv.env['STRIPE_SECRET'];
    final response = await stripeClient.createPaymentIntent(
      request,
      'Bearer $stripeSecret',
    );

    return response;
  }

  @override
  Future<StripeSetupIntent> createSetupIntent({
    bool isEnableAutomaticPaymentMethods = true,
    List<String> paymentMethodTypes = const [],
  }) async {
    final Map<String, dynamic> request = {};
    if (isEnableAutomaticPaymentMethods) {
      request.addAll({
        'automatic_payment_methods[enabled]': true,
      });
    }

    if (paymentMethodTypes.isNotEmpty && !isEnableAutomaticPaymentMethods) {
      request.addAll({
        'payment_method_types[]': paymentMethodTypes,
      });
    }

    final stripeSecret = dotenv.env['STRIPE_SECRET'];
    final response = await stripeClient.createSetupIntent(
      request,
      'Bearer $stripeSecret',
    );

    return response;
  }

  @override
  Future<StripePaymentStatus> checkPaymentStatus({
    required String paymentIntentId,
  }) async {
    final stripeSecret = dotenv.env['STRIPE_SECRET'];
    final response = await stripeClient.checkPaymentStatus(
      'Bearer $stripeSecret',
      paymentIntentId,
    );
    return response;
  }
}
