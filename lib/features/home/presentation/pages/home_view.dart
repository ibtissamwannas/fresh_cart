import 'package:flutter/material.dart';
import 'package:fresh_cart/features/home/presentation/widget/custom_button_navigation_bar.dart';
import 'package:fresh_cart/features/home/presentation/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomButtonNavigationBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
