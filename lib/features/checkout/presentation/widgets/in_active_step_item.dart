import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.index, required this.text});

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: AppColors.veryLightGreyColor,
          child: Text(
            (index + 1).toString(),
            style: TextStyles.semiBold13.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        horizontalSpace(4),
        Text(
          text,
          style: TextStyles.semiBold13.copyWith(
            color: AppColors.veryLightGreyColor,
          ),
        )
      ],
    );
  }
}
