import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/helper_function/snackbars.dart';
import 'package:fresh_cart/core/widgets/custmon_progress_hud.dart';
import 'package:fresh_cart/features/checkout/presentation/cubit/add_order_cubit.dart';

class AddOredrCubitBlocBuilder extends StatelessWidget {
  const AddOredrCubitBlocBuilder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderSuccess) {
          buildSuccessBar(context, '');
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            inAsyncCall: state is AddOrderLoading, child: child);
      },
    );
  }
}
