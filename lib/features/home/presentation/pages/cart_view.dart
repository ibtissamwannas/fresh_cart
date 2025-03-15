import 'package:flutter/material.dart';
import 'package:fresh_cart/features/home/presentation/widget/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const String routeName = 'cart_view';

  @override
  Widget build(BuildContext context) {
    return const CartViewBody();
  }
}
