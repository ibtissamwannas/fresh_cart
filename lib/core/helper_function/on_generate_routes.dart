import 'package:flutter/material.dart';
import 'package:fresh_cart/features/auth/presentation/view/login_view.dart';
import 'package:fresh_cart/features/auth/presentation/view/sign_up_view.dart';
import 'package:fresh_cart/features/best_selling_fruits/presentation/pages/best_selling_view.dart';
import 'package:fresh_cart/features/checkout/presentation/views/checkout_view.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_entity.dart';
import 'package:fresh_cart/features/home/presentation/pages/cart_view.dart';
import 'package:fresh_cart/features/home/presentation/pages/home_view.dart';
import 'package:fresh_cart/features/home/presentation/pages/products_view.dart';
import 'package:fresh_cart/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fresh_cart/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    case ProductsView.routeName:
      return MaterialPageRoute(builder: (context) => const ProductsView());
    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());
    case CheckoutView.routeName:
      return MaterialPageRoute(
        builder: (context) => CheckoutView(
          cartEntity: settings.arguments as CartEntity,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
