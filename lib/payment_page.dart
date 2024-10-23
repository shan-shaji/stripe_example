import 'package:flutter/material.dart';
import 'package:stripe_new/features/stripe_payment/presentation/presentation.dart';
import 'package:stripe_new/features/stripe_payment/presentation/widgets/stripe_pay_later_button.dart';
import 'package:stripe_new/stripe_payment_page_wrapper.dart';

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
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StripePaymentPageWrapper(
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
                      StripePaymentPageWrapper(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
