import 'package:flutter/material.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps(
      {super.key,
      required this.currentPageIndex,
      required this.pageController,
      required this.onTap});

  final int currentPageIndex;
  final PageController pageController;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(getSteps().length, (index) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            onTap(index);
          },
          child: StepItem(
            isActive: index <= currentPageIndex,
            index: (index),
            text: getSteps()[index],
          ),
        ),
      );
    }));
  }
}

List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
  ];
}
