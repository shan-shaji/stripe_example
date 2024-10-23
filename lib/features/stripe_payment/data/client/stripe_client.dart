import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'stripe_client.g.dart';

@RestApi(baseUrl: 'https://api.stripe.com')
abstract class StripeClient {
  factory StripeClient(Dio dio, {String? baseUrl}) = _StripeClient;

  @POST('/v1/payment_intents')
  @Headers({
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future<String> createPaymentIntent(
    @Body() Map<String, dynamic> request,
    @Header('Authorization') String authorization,
  );

  @POST('/v1/setup_intents')
  @Headers({
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future<String> createSetupIntent(
    @Body() Map<String, dynamic> request,
    @Header('Authorization') String authorization,
  );
}
