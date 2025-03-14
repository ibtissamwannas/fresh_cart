import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/cubits/products_cubit.dart';
import 'package:fresh_cart/core/helper_function/spacing.dart';
import 'package:fresh_cart/core/widgets/search_text_field.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_grid.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_header.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_view_body_bloc_builder.dart';
import 'package:fresh_cart/features/home/presentation/widget/custom_home_app_bar.dart';
import 'package:fresh_cart/features/home/presentation/widget/featured_list.dart';

class HomeViewInsideBody extends StatefulWidget {
  const HomeViewInsideBody({
    super.key,
  });

  @override
  State<HomeViewInsideBody> createState() => _HomeViewInsideBodyState();
}

class _HomeViewInsideBodyState extends State<HomeViewInsideBody> {
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
          const BestSellingGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
