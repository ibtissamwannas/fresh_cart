import 'package:flutter/material.dart';
import 'package:fresh_cart/constants.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/features/home/presentation/widget/cart_hearder.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
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
            // SliverToBoxAdapter(
            //   child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
            //       ? SizedBox()
            //       : CustomDivider(),
            // ),
            // CarItemsList(
            //   carItems: context.watch<CartCubit>().cartEntity.cartItems,
            // ),
            // SliverToBoxAdapter(
            //   child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
            //       ? SizedBox()
            //       : CustomDivider(),
            // ),
          ],
        ),
        // Positioned(
        //   left: 16,
        //   right: 16,
        //   bottom: MediaQuery.sizeOf(context).height * .07,
        //   child: CustomCartButton(),
        // )
      ],
    );
  }
}
