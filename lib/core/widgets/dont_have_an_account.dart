import 'package:flutter/widgets.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            children: [
              TextSpan(
                text: 'لا تمتلك حساب؟',
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.lightGreyColor,
                ),
              ),
              const TextSpan(
                text: ' ',
              ),
              TextSpan(
                text: 'قم بإنشاء حساب',
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
