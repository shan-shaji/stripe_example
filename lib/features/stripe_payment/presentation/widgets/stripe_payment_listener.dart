import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';

class StripePaymentBlocListener extends StatelessWidget {
  const StripePaymentBlocListener({
    super.key,
    required this.child,
    required this.onSuccess,
    required this.onFailure,
    required this.onLoading,
    this.isEnableListener = true,
  });

  final Widget child;
  final VoidCallback onSuccess;
  final Function(String error) onFailure;
  final VoidCallback onLoading;

  /// Turn the listener off if you want to manually listen to [StripePaymentBloc].
  /// By default the listener will be on.
  final bool isEnableListener;

  @override
  Widget build(BuildContext context) {
    return isEnableListener
        ? BlocListener<StripePaymentBloc, StripePaymentState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                loading: (_) => onLoading(),
                paymentSuccess: (_) => onSuccess(),
                paymentFailed: (PaymentFailed failure) => onFailure(failure.error),
              );
            },
            child: child,
          )
        : child;
  }
}
