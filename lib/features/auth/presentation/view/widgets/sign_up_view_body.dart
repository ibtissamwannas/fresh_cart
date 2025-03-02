import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/helper_function/snackbars.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/core/widgets/custom_button_widget.dart';
import 'package:fresh_cart/core/widgets/custom_text_form_field.dart';
import 'package:fresh_cart/features/auth/presentation/cubit/signup_cubit/signup_cubit.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  bool isTermAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            children: [
              verticalSpace(24),
              CustomTextFormField(
                  onSaved: (value) => name = value!,
                  hintText: 'الاسم كامل',
                  keyboardType: TextInputType.text),
              verticalSpace(16),
              CustomTextFormField(
                  onSaved: (value) => email = value!,
                  hintText: 'البريد الإلكتروني',
                  keyboardType: TextInputType.emailAddress),
              verticalSpace(16),
              PasswordField(onSaved: (value) => password = value!),
              verticalSpace(16),
              TermsAndConditions(
                onChecked: (value) {
                  isTermAccepted = value;
                },
              ),
              verticalSpace(33),
              CustomButtonWidget(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (isTermAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email, password, name);
                    } else {
                      buildErrorBar(context, 'الرجاء قبول الشروط والأحكام');
                    }
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
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
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final void Function(String?)? onSaved;
  const PasswordField({
    super.key,
    this.onSaved,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        child: Icon(
          _obscureText ? Icons.remove_red_eye : Icons.visibility_off,
          color: AppColors.lightGreyColor,
        ),
      ),
    );
  }
}
