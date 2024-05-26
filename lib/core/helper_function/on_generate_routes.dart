import 'package:flutter/material.dart';
import 'package:fresh_cart/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fresh_cart/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
