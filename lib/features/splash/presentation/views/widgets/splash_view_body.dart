import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/services/share_preferences_singleton.dart';
import 'package:fresh_cart/core/utils/app_images.dart';
import 'package:fresh_cart/features/auth/presentation/view/login_view.dart';
import 'package:fresh_cart/features/onboarding/presentation/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              Assets.imagesPlant,
            ),
          ],
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
        ),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBoardingViewed = Prefs.getBool(kIsOnBoardingViewed) ?? false;
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      if (isOnBoardingViewed) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }
}
