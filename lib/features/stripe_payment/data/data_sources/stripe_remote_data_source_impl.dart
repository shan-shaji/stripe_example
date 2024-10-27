import 'package:stripe_new/features/stripe_payment/data/client/stripe_client.dart';
import 'package:stripe_new/features/stripe_payment/data/data_sources/stripe_remote_data_source.dart';
import 'package:stripe_new/features/stripe_payment/data/models/models.dart';

class StripRemoteDataSourceImpl implements StripeRemoteDataSource {
  final StripeClient stripeClient;

  StripRemoteDataSourceImpl({required this.stripeClient});

  final stripeSecret =
      'eyJraWQiOiIxbTdSRVQ1N0F6bHo1ekowcWNlWXhRbW9VdUJXSzJtV3MyK1I2cytxSm9JPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiJlMjM1YjRkNC1iMDMxLTcwNWItOWZmMC1iZTE3NDMwMWIxMDIiLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAuZXUtd2VzdC0xLmFtYXpvbmF3cy5jb21cL2V1LXdlc3QtMV9tOGlJOFVwNkwiLCJjbGllbnRfaWQiOiI0YWc5MDNvNGtwdDZlNDA2ajhhOXM5azhsbyIsIm9yaWdpbl9qdGkiOiI1YmJhZTJlYy05M2QzLTQxMzgtOGJkYy1iY2Q0NmYzODliNjIiLCJldmVudF9pZCI6IjA5MDdiZjZkLWVjMzYtNGFhYy1iNjgwLTlkOGJjMTkzNmZmYSIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3Mjc5MzgzMTQsImV4cCI6MTczMDA1ODc4NiwiaWF0IjoxNzMwMDU1MTg2LCJqdGkiOiI0YWQzMGY5MS1jNWY0LTQ5MTEtOWIyZi01NDhhMjdjMmE5OWYiLCJ1c2VybmFtZSI6ImUyMzViNGQ0LWIwMzEtNzA1Yi05ZmYwLWJlMTc0MzAxYjEwMiJ9.WY2rWBkLiQkKMoNG1idVSMRsgP9OVAicNk1d-bXCxK-YKrxwrz_gBXTIR_7EURKOf6QnJno0M79sKi40RU-A2M8bY_rftFN-PnYv5WXNWq7oihGNdsJqHvwTAQboPB5KJImcIwJDOwoFGEkLWOEZZEBKbfV8_Q6ae9Zmq-52dGLUeobNdjU8HhLUZzp4h5Vppk01iW1NzfGyxx4IN9NoaiXVHVkOH0sSEK5ChyDygtMUkF_vY18C0HrOLOoUECC8Zqf9r6b9wWYFW-qQn_5FJB7rI7W47sOtHRuhi3TaWsGYYWZggoramq0cRZWKC8rLxF9auVPLsApc0ZU9GzQXHQ';

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
      'paymentMethodTypes': paymentMethodTypes,
    };

    final response = await stripeClient.createPaymentIntent(
      request,
      'Bearer $stripeSecret',
    );

    return response.data;
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

    final response = await stripeClient.createSetupIntent(
      request,
      'Bearer $stripeSecret',
    );

    return response.data;
  }

  @override
  Future<StripePaymentStatus> checkPaymentStatus({
    required String paymentIntentId,
  }) async {
    final response = await stripeClient.checkPaymentStatus(
      'Bearer $stripeSecret',
      paymentIntentId,
    );
    return response;
  }
}
