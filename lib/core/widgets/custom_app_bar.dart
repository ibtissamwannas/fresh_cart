import 'package:flutter/material.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? action;
  const CustomAppBar({
    super.key,
    required this.title,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: action ?? [],
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.bold19,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
