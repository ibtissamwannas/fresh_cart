import 'package:flutter/material.dart';
import 'package:fresh_cart/core/helper_function/get_user.dart';
import 'package:fresh_cart/core/utils/app_images.dart';
import 'package:fresh_cart/core/utils/app_text_styles.dart';
import 'package:fresh_cart/core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير !..',
        style: TextStyles.regular16.copyWith(
          color: const Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        getUser().name,
        style: TextStyles.bold16,
      ),
      trailing: const NotificationWidget(),
    );
  }
}
