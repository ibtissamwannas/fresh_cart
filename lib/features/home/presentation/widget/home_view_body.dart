import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/cubits/products_cubit.dart';
import 'package:fresh_cart/core/repos/products_repo/product_repo.dart';
import 'package:fresh_cart/core/services/get_it_service.dart';
import 'package:fresh_cart/features/home/presentation/widget/home_view_inside_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<ProductsRepo>()),
      child: const HomeViewInsideBody(),
    );
  }
}
