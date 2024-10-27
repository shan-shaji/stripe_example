import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';

class StripePaymentBlocProvider extends StatelessWidget {
  const StripePaymentBlocProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final stripeClient = StripeClient(Dio());
    final stripeRemoteDataSource = StripRemoteDataSourceImpl(
      stripeClient: stripeClient,
    );
    final stripeRepository = StripeRepositoryImpl(
      stripeRemoteDataSource: stripeRemoteDataSource,
    );
    return BlocProvider(
      create: (_) => StripePaymentBloc(
        createPaymentIntentUseCase: CreatePaymentIntentUseCase(
          stripeRepository,
        ),
        createSetupIntentUseCase: CreateSetupIntentUseCase(stripeRepository),
        checkPaymentIntentUseCase: CheckPaymentStatusUseCase(stripeRepository),
      ),
      child: child,
    );
  }
}
