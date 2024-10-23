import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_new/payment_page.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');

  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY'] ?? '';
  Stripe.merchantIdentifier = 'merchant.com.buenro.app';
  Stripe.urlScheme = 'flutterstripe';
  await Stripe.instance.applySettings();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final stripeClient = StripeClient(Dio());
    final stripeRemoteDataSource = StripRemoteDataSourceImpl(
      stripeClient: stripeClient,
    );
    final stripeRepository = StripeRepositoryImpl(
      stripeRemoteDataSource: stripeRemoteDataSource,
    );
    return MaterialApp(
      title: 'Stripe test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => StripePaymentBloc(
          createPaymentIntentUseCase: CreatePaymentIntentUseCase(stripeRepository),
        ),
        child: const PaymentPage(),
      ),
    );
  }
}
