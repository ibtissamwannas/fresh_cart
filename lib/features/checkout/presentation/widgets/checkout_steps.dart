import 'package:flutter/material.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/active_step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(getSteps().length, (index) {
      return Expanded(
        child: ActiveStepItem(
          text: getSteps()[index],
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
    'المراجعه',
  ];
}
