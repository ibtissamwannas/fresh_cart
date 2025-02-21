import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.veryLightGreyColor,
          ),
        ),
        horizontalSpace(16),
        Text(
          'أو',
          style: TextStyles.semiBold16,
        ),
        horizontalSpace(16),
        const Expanded(
          child: Divider(
            color: AppColors.veryLightGreyColor,
          ),
        ),
      ],
    );
  }
}
