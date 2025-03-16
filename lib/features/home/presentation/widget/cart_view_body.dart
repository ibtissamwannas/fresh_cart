import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fresh_cart/features/home/presentation/widget/cart_hearder.dart';
import 'package:fresh_cart/features/home/presentation/widget/cart_item_list.dart';
import 'package:fresh_cart/features/home/presentation/widget/custom_cart_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: kTopPaddding,
                  ),
                  CustomAppBar(
                    title: 'السلة',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CartHeader(),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? const SizedBox()
                  : const CustomDivider(),
            ),
            CarItemsList(
              carItems: context.watch<CartCubit>().cartEntity.cartItems,
            ),
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? const SizedBox()
                  : const CustomDivider(),
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * .07,
          child: const CustomCartButton(),
        )
      ],
    );
  }
}
