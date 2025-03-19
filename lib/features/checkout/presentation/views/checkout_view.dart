import 'package:flutter/material.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/checkout/domain/entities/order_entity.dart';
import 'package:fresh_cart/features/checkout/presentation/widgets/checkout_view_body.dart';
import 'package:fresh_cart/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const routeName = 'checkout';

  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الشحن'),
      body: Provider.value(
        value: OrderInputEntity(cartEntity, uID: ''),
        child: const CheckoutViewBody(),
      ),
    );
  }
}
