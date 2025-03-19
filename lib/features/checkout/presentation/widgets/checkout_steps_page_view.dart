import 'package:flutter/material.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/address_input_section.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/checkout_steps.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/payment_section.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/shipping_section.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PageView.builder(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: getSteps().length,
          itemBuilder: (BuildContext context, int index) {
            return getPages()[index];
          },
        ),
      ),
    );
  }

  List<Widget> getPages() {
    return [
      const ShippingSection(),
      const AddressInputSection(),
      PaymentSection(
        pageController: pageController,
      ),
    ];
  }
}
