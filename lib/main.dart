import 'package:ecommerce_app/config.dart';
import 'package:ecommerce_app/core/api/stripe_payment/stripe_keys.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = ApiKeys.publishableKey;
  await CacheHelper.init();
  configureDependencies();
  runApp(const MyApp());
}


