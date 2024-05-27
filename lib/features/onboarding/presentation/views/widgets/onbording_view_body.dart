import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/features/onboarding/presentation/views/widgets/onboarding_pagae_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: const DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.lightGreenColor,
          ),
        )
      ],
    );
  }
}
