import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.text, required this.image});

  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: const Color(0xFF1B5E37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Center(child: SvgPicture.asset(image)),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style:
                TextStyles.semiBold11.copyWith(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
