import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/services/get_it_service.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';
import 'package:fresh_cart/features/auth/presentation/cubit/signin_cubit/signin_cubit.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/signin_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل دخول'),
        body: const SigninBlocConsumer(),
      ),
    );
  }
}
