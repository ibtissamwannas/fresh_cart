import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/custom_checkbox.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({
    super.key,
    required this.onChecked,
  });
  final ValueChanged<bool> onChecked;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          onChecked: (value) {
            isTermAccepted = value;
            widget.onChecked(value);
            setState(() {});
          },
          isChecked: isTermAccepted,
        ),
        horizontalSpace(16),
        Expanded(
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.lightGreyColor,
                ),
              ),
              TextSpan(
                text: 'الشروط والأحكام الخاصة بنا',
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
