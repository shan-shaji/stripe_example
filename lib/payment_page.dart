import 'package:flutter/material.dart';
import 'package:stripe_new/features/stripe_payment/presentation/presentation.dart';
import 'package:stripe_new/features/stripe_payment/presentation/widgets/stripe_pay_later_button.dart';
import 'package:stripe_new/stripe_payment_bloc_provider.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      width: double.infinity,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text('Stripe Playground'),
                          const SizedBox(height: 10),
                          StripePaymentBlocProvider(
                            child: StripePayLaterButton(
                              title: 'Pay Later',
                              onLoading: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Loading'),
                                  ),
                                );
                              },
                              onSuccess: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Success'),
                                  ),
                                );
                              },
                              onFailure: (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(error),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          StripePaymentBlocProvider(
                            child: StripePaymentButton(
                              title: 'Pay Now 300',
                              onLoading: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Loading'),
                                  ),
                                );
                              },
                              onSuccess: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Success'),
                                  ),
                                );
                              },
                              onFailure: (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(error),
                                  ),
                                );
                              },
                              amount: 300,
                              currency: 'eur',
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
