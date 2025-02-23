import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/core/widgets/custom_button_widget.dart';
import 'package:fresh_cart/core/widgets/custom_text_form_field.dart';
import 'package:fresh_cart/features/auth/presentation/view/login_view.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            verticalSpace(24),
            const CustomTextFormField(
                hintText: 'الاسم كامل', keyboardType: TextInputType.text),
            verticalSpace(16),
            const CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress),
            verticalSpace(16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon:
                  Icon(Icons.remove_red_eye, color: AppColors.lightGreyColor),
            ),
            verticalSpace(16),
            const TermsAndConditions(),
            verticalSpace(33),
            const CustomButtonWidget(text: 'إنشاء حساب جديد'),
            verticalSpace(16),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'تمتلك حساب بالفعل؟ ',
                        style: TextStyles.semiBold16.copyWith(
                          color: AppColors.lightGreyColor,
                        ),
                      ),
                      const TextSpan(
                        text: ' ',
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pop(context),
                        text: 'تسجيل دخول',
                        style: TextStyles.semiBold16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
