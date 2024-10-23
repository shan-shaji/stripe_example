import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';

part 'stripe_payment_bloc.freezed.dart';

part 'stripe_payment_event.dart';

part 'stripe_payment_state.dart';

class StripePaymentBloc extends Bloc<StripePaymentEvent, StripePaymentState> {
  final CreatePaymentIntentUseCase _createPaymentIntentUseCase;
  final CreateSetupIntentUseCase _createSetupIntentUseCase;
  final _errorMessage = 'We\'re having trouble processing your payment.';

  StripePaymentBloc({
    required CreatePaymentIntentUseCase createPaymentIntentUseCase,
    required CreateSetupIntentUseCase createSetupIntentUseCase,
  })  : _createPaymentIntentUseCase = createPaymentIntentUseCase,
        _createSetupIntentUseCase = createSetupIntentUseCase,
        super(const StripePaymentState.initial()) {
    on<PayNow>(_onStripePayNow);
    on<HandlePaymentSheet>(_onHandlePaymentSheet);
    on<PayLater>(_onPayLater);
  }

  Future<void> _onPayLater(
    PayLater event,
    Emitter<StripePaymentState> emit,
  ) async {
    emit(const StripePaymentState.loading());
    final response = await _createSetupIntentUseCase();
    response.fold((error) {
      emit(StripePaymentState.paymentFailed(error: error.message));
    }, (secret) {
      add(
        HandlePaymentSheet(
          clientSecret: secret,
          paymentType: PaymentType.payLater,
        ),
      );
    });
  }

  Future<void> _onStripePayNow(
    PayNow event,
    Emitter<StripePaymentState> emit,
  ) async {
    emit(const StripePaymentState.loading());
    final response = await _createPaymentIntentUseCase(
      amount: event.amount,
      currency: event.currency,
    );
    response.fold((error) {
      emit(StripePaymentState.paymentFailed(error: error.message));
    }, (secret) {
      add(
        HandlePaymentSheet(
          clientSecret: secret,
          paymentType: PaymentType.payNow,
        ),
      );
    });
  }

  String _mapFailureCodeToMessage(FailureCode code) {
    return switch (code) {
      FailureCode.Canceled => 'The payment flow has been canceled',
      FailureCode.Failed => _errorMessage,
      FailureCode.Timeout => _errorMessage,
      FailureCode.Unknown => _errorMessage,
    };
  }

  Future<void> _onHandlePaymentSheet(
    HandlePaymentSheet event,
    Emitter<StripePaymentState> emit,
  ) async {
    try {
      const applePayConfig = PaymentSheetApplePay(merchantCountryCode: 'DE');
      const googlePayConfig = PaymentSheetGooglePay(
        merchantCountryCode: 'DE',
        currencyCode: 'EUR',
        testEnv: true,
      );

      SetupPaymentSheetParameters setupIntentSheetParameters =
          const SetupPaymentSheetParameters(
        applePay: applePayConfig,
        googlePay: googlePayConfig,
        style: ThemeMode.light,
        merchantDisplayName: 'Beunro',
      );

      setupIntentSheetParameters = event.paymentType == PaymentType.payLater
          ? setupIntentSheetParameters.copyWith(
              setupIntentClientSecret: event.clientSecret)
          : setupIntentSheetParameters.copyWith(
              paymentIntentClientSecret: event.clientSecret);

      await Stripe.instance
          .initPaymentSheet(paymentSheetParameters: setupIntentSheetParameters);
      await Stripe.instance.presentPaymentSheet();
      emit(const StripePaymentState.paymentSuccess());
    } on StripeConfigException catch (_) {
      emit(StripePaymentState.paymentFailed(error: _errorMessage));
    } on StripeException catch (e) {
      emit(StripePaymentState.paymentFailed(
          error: _mapFailureCodeToMessage(e.error.code)));
    } catch (_) {
      emit(StripePaymentState.paymentFailed(error: _errorMessage));
    }
  }
}

// appearance: const PaymentSheetAppearance(
//   primaryButton: PaymentSheetPrimaryButtonAppearance(
//     shapes: PaymentSheetPrimaryButtonShape(
//       blurRadius: 2,
//       borderWidth: 3,
//     ),
//     colors: PaymentSheetPrimaryButtonTheme(
//       dark: PaymentSheetPrimaryButtonThemeColors(
//         text: Colors.red,
//         background: Colors.amber,
//         border: Colors.cyanAccent,
//       ),
//       light: PaymentSheetPrimaryButtonThemeColors(
//         text: Colors.red,
//         background: Colors.amber,
//         border: Colors.cyanAccent,
//       ),
//     ),
//   ),
//   shapes: PaymentSheetShape(
//     borderRadius: 20,
//   ),
//   colors: PaymentSheetAppearanceColors(
//     primary: Colors.purple,
//     background: Colors.grey,
//     componentBackground: Colors.blue,
//     componentBorder: Colors.red,
//     componentDivider: Colors.amber,
//     componentText: Colors.cyanAccent,
//     primaryText: Colors.amber,
//     secondaryText: Colors.red,
//     icon: Colors.red,
//   ),
// ),
// billingDetailsCollectionConfiguration: const BillingDetailsCollectionConfiguration(
//   name: CollectionMode.always,
//   phone: CollectionMode.always,
//   email: CollectionMode.always,
//   address: AddressCollectionMode.full,
// ),
