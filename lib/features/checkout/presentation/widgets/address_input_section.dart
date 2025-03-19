import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/widgets/custom_text_form_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(24),
          const CustomTextFormField(
            hintText: 'الاسم كامل',
            keyboardType: TextInputType.text,
          ),
          verticalSpace(16),
          const CustomTextFormField(
            hintText: 'البريد الإلكتروني',
            keyboardType: TextInputType.text,
          ),
          verticalSpace(16),
          const CustomTextFormField(
            hintText: 'العنوان',
            keyboardType: TextInputType.text,
          ),
          verticalSpace(16),
          const CustomTextFormField(
            hintText: 'المدينه',
            keyboardType: TextInputType.text,
          ),
          verticalSpace(16),
          const CustomTextFormField(
            hintText: 'رقم الطابق , رقم الشقه ..',
            keyboardType: TextInputType.text,
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
