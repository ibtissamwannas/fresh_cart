import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_cart/core/utils/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  const CustomCheckbox(
      {super.key, required this.isChecked, required this.onChecked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? Colors.transparent : AppColors.borderColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset('assets/icons/check.svg'),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
