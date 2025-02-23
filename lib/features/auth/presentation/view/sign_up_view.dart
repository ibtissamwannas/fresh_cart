import 'package:flutter/material.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'إنشاء حساب'),
      body: const SignUpViewBody(),
    );
  }
}
