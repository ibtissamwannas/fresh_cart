import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/cubits/products_cubit.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/core/widgets/search_text_field.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_view_body_bloc_builder.dart';
import 'package:fresh_cart/features/home/presentation/widget/custom_home_app_bar.dart';
import 'package:fresh_cart/features/home/presentation/widget/products_view_header.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingroducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBar(
                  title: 'المنتجات',
                  showBackbottom: false,
                ),
                verticalSpace(12),
                const SearchTextField(),
                verticalSpace(12),
                ProductsViewHeader(
                  length: context.read<ProductsCubit>().productsLength,
                ),
                verticalSpace(8),
              ],
            ),
          ),
          const ProductsGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
