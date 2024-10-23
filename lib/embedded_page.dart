import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_new/features/stripe_payment/data/client/stripe_client.dart';
import 'package:stripe_new/features/stripe_payment/presentation/bloc/stripe_payment_bloc.dart';

class EmbeddedPage extends StatefulWidget {
  const EmbeddedPage({super.key});

  @override
  State<EmbeddedPage> createState() => _EmbeddedPageState();
}

class _EmbeddedPageState extends State<EmbeddedPage> {
  final controller = CardFormEditController();

  @override
  void initState() {
    controller.addListener(update);
    super.initState();
  }

  void update() => setState(() {});

  @override
  void dispose() {
    controller.removeListener(update);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                PlatformPayButton(
                  onPressed: () {
                    context.read<StripePaymentBloc>().add(
                          const PayNow(
                            amount: 300,
                            currency: 'eur',
                            paymentType: PaymentType.applePay,
                          ),
                        );
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const Text("or", style: TextStyle(color: Colors.grey)),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const CardFormField(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      final paymentMethod = await Stripe.instance.createPaymentMethod(
                        params: const PaymentMethodParams.card(
                          paymentMethodData: PaymentMethodData(),
                        ),
                      );

                      StripeClient stripeClient = StripeClient(Dio());
                      final stripeSecret = dotenv.env['STRIPE_SECRET'];
                      stripeClient.createPaymentIntent({}, 'Bearer $stripeSecret');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text('Pay now'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
