import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/services/get_it_service.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';
import 'package:fresh_cart/features/auth/presentation/cubit/signup_cubit/signup_cubit.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/signup_view_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'sign_up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'إنشاء حساب'),
        body: const SignupViewBlocConsumer(),
      ),
    );
  }
}
