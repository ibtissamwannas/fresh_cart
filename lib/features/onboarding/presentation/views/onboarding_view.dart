import 'package:flutter/material.dart';
import 'package:fresh_cart/features/onboarding/presentation/views/widgets/onbording_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  static const routeName = "onboarding";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(
      
      ),
    );
  }
}
