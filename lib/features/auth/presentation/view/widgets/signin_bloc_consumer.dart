import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/helper_function/snackbars.dart';
import 'package:fresh_cart/core/widgets/custmon_progress_hud.dart';
import 'package:fresh_cart/features/auth/presentation/cubit/signin_cubit/signin_cubit.dart';
import 'package:fresh_cart/features/auth/presentation/view/widgets/login_view_body.dart';
import 'package:fresh_cart/features/home/presentation/pages/home_view.dart';

class SigninBlocConsumer extends StatelessWidget {
  const SigninBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is SigninLoading,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
