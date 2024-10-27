import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stripe_new/features/stripe_payment/domain/use_cases/check_payment_status_use_case.dart';
import 'package:stripe_new/features/stripe_payment/stripe_payment.dart';
import 'package:stripe_new/features/stripe_payment/utils/stripe_error_utils.dart';

part 'stripe_payment_bloc.freezed.dart';

part 'stripe_payment_event.dart';

part 'stripe_payment_state.dart';

class StripePaymentBloc extends Bloc<StripePaymentEvent, StripePaymentState> {
  final CreatePaymentIntentUseCase _createPaymentIntentUseCase;
  final CreateSetupIntentUseCase _createSetupIntentUseCase;
  final CheckPaymentStatusUseCase _checkPaymentStatusUseCase;

  StripePaymentBloc({
    required CreatePaymentIntentUseCase createPaymentIntentUseCase,
    required CreateSetupIntentUseCase createSetupIntentUseCase,
    required CheckPaymentStatusUseCase checkPaymentIntentUseCase,
  })  : _createPaymentIntentUseCase = createPaymentIntentUseCase,
        _createSetupIntentUseCase = createSetupIntentUseCase,
        _checkPaymentStatusUseCase = checkPaymentIntentUseCase,
        super(const StripePaymentState.initial()) {
    on<PayNow>(_onStripePayNow, transformer: droppable());
    on<HandlePaymentSheet>(_onHandlePaymentSheet);
    on<PayLater>(_onStripePayLater, transformer: droppable());
  }

  Future<void> _onStripePayLater(
    PayLater event,
    Emitter<StripePaymentState> emit,
  ) async {
    emit(const StripePaymentState.loading());
    final response = await _createSetupIntentUseCase();
    response.fold((error) {
      emit(StripePaymentState.paymentFailed(error: error.message));
    }, (stripeSetupIntent) {
      add(
        HandlePaymentSheet(
          clientSecret: stripeSetupIntent.clientSecret,
          stripeIntentId: stripeSetupIntent.id,
          paymentType: PaymentType.payLater,
          currency: 'eur',
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
    );
    response.fold((error) {
      emit(StripePaymentState.paymentFailed(error: error.message));
    }, (stripePaymentIntent) {
      add(
        HandlePaymentSheet(
          clientSecret: stripePaymentIntent.clientSecret,
          currency: stripePaymentIntent.currency,
          stripeIntentId: stripePaymentIntent.id,
          paymentType: PaymentType.payNow,
        ),
      );
    });
  }

  Future<(String, StripePaymentStatus?)> _checkPaymentConfirmation({
    required String paymentIntentId,
  }) async {
    final response =
        await _checkPaymentStatusUseCase(paymentIntentId: paymentIntentId);
    return response;
  }

  Future<void> _onHandlePaymentSheet(
    HandlePaymentSheet event,
    Emitter<StripePaymentState> emit,
  ) async {
    try {
      const merchantCountryCode = 'DE';
      const applePayConfig =
          PaymentSheetApplePay(merchantCountryCode: merchantCountryCode);
      final googlePayConfig = PaymentSheetGooglePay(
        merchantCountryCode: merchantCountryCode,
        currencyCode: event.currency,
        testEnv: true,
      );

      SetupPaymentSheetParameters setupIntentSheetParameters =
          SetupPaymentSheetParameters(
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

      if (event.paymentType == PaymentType.payLater) {
        emit(const StripePaymentState.paymentSuccess());
        return;
      }

      final (error, stripePaymentStatus) = await _checkPaymentConfirmation(
        paymentIntentId: event.stripeIntentId,
      );

      if (error.isNotEmpty) {
        emit(StripePaymentState.paymentFailed(error: error));
        return;
      }

      emit(const StripePaymentState.paymentSuccess());
    } on StripeConfigException catch (_) {
      emit(const StripePaymentState.paymentFailed(
          error: StripeErrorUtils.errorMessage));
    } on StripeException catch (e) {
      emit(StripePaymentState.paymentFailed(
          error: StripeErrorUtils.mapStripeFailureCodeToMessage(e.error.code)));
    } catch (_) {
      emit(const StripePaymentState.paymentFailed(
          error: StripeErrorUtils.errorMessage));
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
