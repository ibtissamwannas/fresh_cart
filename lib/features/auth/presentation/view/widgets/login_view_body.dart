import 'package:flutter/material.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/core/widgets/custom_button_widget.dart';
import 'package:fresh_cart/core/widgets/custom_text_form_field.dart';
import 'package:fresh_cart/core/widgets/dont_have_an_account.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            verticalSpace(24),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            verticalSpace(24),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.lightGreyColor,
              ),
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.emailAddress,
            ),
            verticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            verticalSpace(33),
            const CustomButtonWidget(text: "تسجيل دخول"),
            verticalSpace(33),
            const DontHaveAnAccount(),
            verticalSpace(33),
            const OrDivider(),
            verticalSpace(16),
            SocialLoginButton(
              image: 'assets/icons/google.svg',
              title: 'تسجيل الدخول بحساب جوجل',
              onPressed: () {},
            ),
            verticalSpace(16),
            SocialLoginButton(
              image: 'assets/icons/apple.svg',
              title: 'تسجيل الدخول بحساب أبل',
              onPressed: () {},
            ),
            verticalSpace(16),
            SocialLoginButton(
              image: 'assets/icons/facebook.svg',
              title: 'تسجيل الدخول بحساب فيسبوك',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
