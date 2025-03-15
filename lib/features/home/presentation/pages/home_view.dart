import 'package:flutter/material.dart';
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
    return Scaffold(
      bottomNavigationBar: CustomButtonNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;

          setState(() {});
        },
      ),
      body: SafeArea(
          child: IndexedStack(
        index: currentViewIndex,
        children: const [
          HomeViewBody(),
          ProductsView(),
          CartView(),
        ],
      )),
    );
  }

  Widget getCurrentView() {
    return [
      const HomeViewBody(),
      const ProductsView(),
    ][currentViewIndex];
  }
}
