import 'package:flutter/material.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/active_step_item.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/in_active_step_item.dart';

class StepItem extends StatelessWidget {
  const StepItem(
      {super.key,
      required this.index,
      required this.text,
      required this.isActive});

  final int index;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveStepItem(text: text),
      secondChild: InActiveStepItem(index: index, text: text),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(microseconds: 300),
    );
  }
}
