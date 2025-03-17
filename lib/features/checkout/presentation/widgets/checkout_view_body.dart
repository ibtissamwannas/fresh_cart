import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/widgets/custom_button_widget.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/checkout_steps.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CheckoutSteps(),
          CheckoutPageView(pageController: pageController),
          const CustomButtonWidget(text: 'التالي'),
          verticalSpace(32),
        ],
      ),
    );
  }
}
