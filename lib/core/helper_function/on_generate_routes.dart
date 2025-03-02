import 'package:flutter/material.dart';
import 'package:fresh_cart/features/auth/presentation/view/login_view.dart';
import 'package:fresh_cart/features/auth/presentation/view/sign_up_view.dart';
import 'package:fresh_cart/features/home/presentation/pages/home_view.dart';
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
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
