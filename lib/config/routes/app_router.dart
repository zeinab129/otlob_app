import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/core/components/reuseable_components.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/presentation/pages/forget_pass_screen.dart';
import 'package:ecommerce_app/features/auth_features/login/presentation/page/login_screen.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/presentation/pages/reset_pass_screen.dart';
import 'package:ecommerce_app/features/auth_features/signUp/presentation/pages/signup.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/presentation/pages/ver_code_screen.dart';
import 'package:ecommerce_app/features/home/presentation/pages/cart_screen.dart';
import 'package:ecommerce_app/features/home/presentation/pages/home.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/products_tab.dart';
import 'package:flutter/material.dart';

class AppRoutesName {
  static const String login = "login";
  static const String forget_pass = "forget_pass";
  static const String ver_code = "ver_code";
  static const String reset_pass = "reset_pass";
  static const String signup = "signup";
  static const String cart = "cart";
  static const String home = "home";
  static const String products = "products";
}

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case AppRoutesName.forget_pass:
        return MaterialPageRoute(
          builder: (context) => ForgetPassScreen(),
        );
      case AppRoutesName.ver_code:
        String args = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => VerCodeScreen(email: args),
        );
        case AppRoutesName.reset_pass:
          String args = settings.arguments as String;
          return MaterialPageRoute(
          builder: (context) => ResetPassScreen(email: args,),
        );
      case AppRoutesName.signup:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      case AppRoutesName.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case AppRoutesName.products:
        return MaterialPageRoute(
          builder: (context) => const ProductsTab(),
        );

      case AppRoutesName.cart:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => UndefinedRoute(),
        );
    }
  }
}
