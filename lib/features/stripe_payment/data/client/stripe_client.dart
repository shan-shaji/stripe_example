import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:stripe_new/features/stripe_payment/data/models/models.dart';

part 'stripe_client.g.dart';

@RestApi(baseUrl: 'https://dev-api.buen.ro')
abstract class StripeClient {
  factory StripeClient(Dio dio, {String? baseUrl}) = _StripeClient;

  @POST('/api/v1/stripe/create-payment-intent')
  @Headers({'Content-Type': 'application/json'})
  Future<StripePaymentIntentResponse> createPaymentIntent(
    @Body() Map<String, dynamic> request,
    @Header('Authorization') String authorization,
  );

  @POST('/api/v1/stripe/create-setup-intent')
  @Headers({'Content-Type': 'application/json'})
  Future<StripeSetupIntentResponse> createSetupIntent(
    @Body() Map<String, dynamic> request,
    @Header('Authorization') String authorization,
  );

  @GET('/api/v1/stripe/check-payment-status/{paymentIntentId}')
  @Headers({'Content-Type': 'application/json'})
  Future<StripePaymentStatus> checkPaymentStatus(
    @Header('Authorization') String authorization,
    @Path('paymentIntentId') String paymentIntentId,
  );
}
