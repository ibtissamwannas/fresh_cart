import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/widgets/fruit_item.dart';
import 'package:fresh_cart/core/widgets/search_text_field.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_grid.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_header.dart';
import 'package:fresh_cart/features/home/presentation/widget/custom_home_app_bar.dart';
import 'package:fresh_cart/features/home/presentation/widget/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomHomeAppBar(),
                verticalSpace(16),
                const SearchTextField(),
                verticalSpace(12),
                const FeaturedList(),
                verticalSpace(12),
                const BestSellingHeader(),
                verticalSpace(8),
              ],
            ),
          ),
          const BestSellingGrid(),
        ],
      ),
    );
  }
}
