import 'package:flutter/material.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/features/best_selling_fruits/presentation/pages/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, BestSellingView.routeName),
      child: Row(
        children: [
          Text(
            'الأكثر مبيعًا',
            style: TextStyles.bold16,
          ),
          const Spacer(),
          Text(
            'المزيد',
            style: TextStyles.regular13.copyWith(
              color: const Color(0xff949D9E),
            ),
          )
        ],
      ),
    );
  }
}
