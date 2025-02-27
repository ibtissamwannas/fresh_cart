import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/core/widgets/custom_button_widget.dart';
import 'package:fresh_cart/core/widgets/custom_text_form_field.dart';
import 'package:fresh_cart/core/widgets/dont_have_an_account.dart';
import 'package:fresh_cart/features/auth/presentation/cubit/signin_cubit/signin_cubit.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/sign_up_view_body.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/social_login_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              verticalSpace(24),
              CustomTextFormField(
                onSaved: (value) => email = value!,
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              verticalSpace(24),
              PasswordField(
                onSaved: (value) => password = value!,
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
              CustomButtonWidget(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      context
                          .read<SigninCubit>()
                          .loginWithEmailAndPassword(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: "تسجيل دخول"),
              verticalSpace(33),
              const DontHaveAnAccount(),
              verticalSpace(33),
              const OrDivider(),
              verticalSpace(16),
              SocialLoginButton(
                image: 'assets/icons/google.svg',
                title: 'تسجيل الدخول بحساب جوجل',
                onPressed: () {
                  context.read<SigninCubit>().loginWithGoogle();
                },
              ),
              // verticalSpace(16),
              // SocialLoginButton(
              //   image: 'assets/icons/apple.svg',
              //   title: 'تسجيل الدخول بحساب أبل',
              //   onPressed: () {
              //     context.read<SigninCubit>().loginWithApple();
              //   },
              // ),
              verticalSpace(16),
              SocialLoginButton(
                image: 'assets/icons/facebook.svg',
                title: 'تسجيل الدخول بحساب فيسبوك',
                onPressed: () {
                  context.read<SigninCubit>().loginWithFacebook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
