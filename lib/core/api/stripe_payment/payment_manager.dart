import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/stripe_payment/stripe_keys.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

abstract class PaymentManager {
  static bool isSuccess = false;
  static Future<bool> makePayment(int amount, String currency, BuildContext context) async {
    try {
      String clientSecret =
          await _getClientSecret((amount * 100).toString(), currency);
      await _initializePaymentSheet(clientSecret);
      await Stripe.instance.presentPaymentSheet().then((value) {
        isSuccess = true;
      });
      return isSuccess;
    } catch (e) {
      print("Error  => " + e.toString());
      return isSuccess;
    }
  }

  static Future<String> _getClientSecret(String amount, String currency) async {
    Dio dio = Dio();
    var response = await dio.post("https://api.stripe.com/v1/payment_intents",
        options: Options(
          headers: {
            "Authorization": "Bearer ${ApiKeys.secreteKey}",
            "Content-Type": "application/x-www-form-urlencoded"
          },
        ),
        data: {"amount": amount, "currency": currency});

    if (response.data['status'] == 'succeeded') {
      print('Payment successful');
    } else {
      print('Payment failed');
    }
    return response.data["client_secret"];
  }

  static Future<void> _initializePaymentSheet(String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            billingDetails: const BillingDetails(
                address: Address(
                    city: 'YOUR CITY',
                    country: 'YOUR COUNTRY',
                    line1: 'YOUR ADDRESS 1',
                    line2: 'YOUR ADDRESS 2',
                    postalCode: 'YOUR PINCODE',
                    state: 'YOUR STATE')),
            style: ThemeMode.light,
            paymentIntentClientSecret: clientSecret,
            merchantDisplayName: "E-commerce"));
  }
}
