import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_cart/core/cubits/products_cubit.dart';
import 'package:fresh_cart/core/helper_function/get_dummy_products.dart';
import 'package:fresh_cart/core/widgets/custom_error_widget.dart';
import 'package:fresh_cart/features/home/presentation/widget/best_selling_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingGrid(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(text: state.errMessage),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGrid(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
