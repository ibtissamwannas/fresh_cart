import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_cart/core/utils/app_images.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/features/best_selling_fruits/presentation/pages/best_selling_view.dart';

class ProductsViewHeader extends StatelessWidget {
  final int length;
  const ProductsViewHeader({super.key, required this.length});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, BestSellingView.routeName),
      child: Row(
        children: [
          Text(
            'المنتجات+ $length',
            style: TextStyles.bold16,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.10000000149011612),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x66CACECE)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: SvgPicture.asset(
              Assets.imagesFilter2,
            ),
          )
        ],
      ),
    );
  }
}
