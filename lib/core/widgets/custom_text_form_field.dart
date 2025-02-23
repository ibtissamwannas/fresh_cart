import 'package:flutter/material.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  const CustomTextFormField({
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(
          color: AppColors.lightGreyColor,
        ),
        fillColor: AppColors.fieldFillColor,
        filled: true,
        border: buildOutline(),
        enabledBorder: buildOutline(),
        focusedBorder: buildOutline(),
      ),
    );
  }

  OutlineInputBorder buildOutline() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.borderColor,
      ),
    );
  }
}
