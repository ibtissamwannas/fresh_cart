import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/helper_function/snackbars.dart';
import 'package:fresh_cart/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fresh_cart/features/home/presentation/pages/cart_view.dart';
import 'package:fresh_cart/features/home/presentation/pages/products_view.dart';
import 'package:fresh_cart/features/home/presentation/widget/custom_button_navigation_bar.dart';
import 'package:fresh_cart/features/home/presentation/widget/home_view_body.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routeName = 'main_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomButtonNavigationBar(
          onItemTapped: (index) {
            currentViewIndex = index;

            setState(() {});
          },
        ),
        body: BlocListener<CartCubit, CartState>(
            listener: (context, state) {
              if (state is CartItemAdded) {
                buildSuccessBar(context, 'تمت العمليه بنجاح');
              }
              if (state is CartItemRemoved) {
                buildSuccessBar(context, 'تمت العمليه بنجاح');
              }
            },
            child: SafeArea(
                child: IndexedStack(
              index: currentViewIndex,
              children: const [
                HomeViewBody(),
                ProductsView(),
                CartView(),
              ],
            ))),
      ),
    );
  }

  Widget getCurrentView() {
    return [
      const HomeViewBody(),
      const ProductsView(),
    ][currentViewIndex];
  }
}
