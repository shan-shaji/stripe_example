import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stripe_new/features/stripe_payment/presentation/widgets/stripe_button.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';

class StripePaymentButton extends StatelessWidget {
  const StripePaymentButton({
    super.key,
    required this.title,
    required this.onLoading,
    required this.onSuccess,
    required this.onFailure,
    required this.amount,
    required this.currency,
    this.decoration,
    this.onTap,
    this.isEnableListener = true,
    this.titleStyle,
  });

  final String title;
  final TextStyle? titleStyle;
  final VoidCallback? onTap;
  final BoxDecoration? decoration;
  final VoidCallback onSuccess;
  final VoidCallback onLoading;
  final double amount;
  final String currency;
  final Function(String error) onFailure;

  /// Turn the listener off if you want to manually listen to [StripePaymentBloc].
  /// By default the listener will be `on`.
  final bool isEnableListener;

  @override
  Widget build(BuildContext context) {
    return StripePaymentBlocListener(
      onSuccess: onSuccess,
      onFailure: onFailure,
      onLoading: onLoading,
      isEnableListener: isEnableListener,
      child: BlocBuilder<StripePaymentBloc, StripePaymentState>(
        builder: (context, state) {
          final button = StripeButton(
            onTap: () {
              if (onTap == null) {
                context.read<StripePaymentBloc>().add(
                      PayNow(
                        amount: amount,
                        currency: currency,
                      ),
                    );
                return;
              }
              onTap!();
            },
            title: title,
            titleStyle: titleStyle,
            decoration: decoration,
          );

          if (isEnableListener) return button;
          return state.maybeMap(
            loading: (_) => const CircularProgressIndicator(),
            orElse: () => button,
          );
        },
      ),
    );
  }
}
