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
  final _errorMessage = 'We\'re having trouble processing your payment.';

  StripePaymentBloc({
    required CreatePaymentIntentUseCase createPaymentIntentUseCase,
  })  : _createPaymentIntentUseCase = createPaymentIntentUseCase,
        super(const StripePaymentState.initial()) {
    on<PayNow>(_onStripePayNow);
    on<HandlePaymentSheet>(_onHandlePaymentSheet);
    on<PayWithApplePay>(_onPayWithAppPay);
  }

  Future<void> _onPayWithAppPay(
    PayWithApplePay event,
    Emitter<StripePaymentState> emit,
  ) async {
    try {
      await Stripe.instance.confirmPlatformPayPaymentIntent(
        clientSecret: event.clientSecret,
        confirmParams: PlatformPayConfirmParams.applePay(
          applePay: ApplePayParams(
            merchantCountryCode: 'DE',
            currencyCode: 'EUR',
            cartItems: [
              ApplePayCartSummaryItem.immediate(
                label: event.itemName,
                amount: event.amount,
              )
            ],
          ),
        ),
      );
      emit(const StripePaymentState.paymentSuccess());
    } on StripeConfigException catch (_) {
      emit(StripePaymentState.paymentFailed(error: _errorMessage));
    } on StripeException catch (e) {
      emit(StripePaymentState.paymentFailed(error: _mapFailureCodeToMessage(e.error.code)));
    } catch (_) {
      emit(StripePaymentState.paymentFailed(error: _errorMessage));
    }
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
    }, (data) {
      if (event.paymentType == PaymentType.stripeSheet) {
        add(HandlePaymentSheet(clientSecret: data));
      } else {
        add(
          PayWithApplePay(
            clientSecret: data,
            amount: '${event.amount}',
            itemName: 'TEST',
          ),
        );
      }
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
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: event.clientSecret,
          applePay: const PaymentSheetApplePay(
            merchantCountryCode: 'DE',
          ),
          googlePay: const PaymentSheetGooglePay(
            merchantCountryCode: 'DE',
            currencyCode: 'EUR',
            testEnv: true,
          ),
          style: ThemeMode.light,
          merchantDisplayName: 'Beunro',
        ),
      );
      await Stripe.instance.presentPaymentSheet();
      emit(const StripePaymentState.paymentSuccess());
    } on StripeConfigException catch (_) {
      emit(StripePaymentState.paymentFailed(error: _errorMessage));
    } on StripeException catch (e) {
      emit(StripePaymentState.paymentFailed(error: _mapFailureCodeToMessage(e.error.code)));
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
