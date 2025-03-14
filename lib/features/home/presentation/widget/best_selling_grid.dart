import 'package:flutter/material.dart';
import 'package:fresh_cart/core/entities/product_entity.dart';
import 'package:fresh_cart/core/widgets/fruit_item.dart';

class BestSellingGrid extends StatelessWidget {
  const BestSellingGrid({super.key, required this.products});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 163 / 190,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (_, index) {
          return FruitItem(
            productEntity: products[index],
          );
        });
  }
}
