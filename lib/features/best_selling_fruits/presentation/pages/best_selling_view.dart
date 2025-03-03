import 'package:flutter/material.dart';
import 'package:fresh_cart/core/widgets/custom_app_bar.dart';
import 'package:fresh_cart/core/widgets/notification_widget.dart';
import 'package:fresh_cart/features/best_selling_fruits/presentation/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const String routeName = 'best_selling_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الأكثر مبيعًا', action: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: NotificationWidget(),
        )
      ]),
      body: BestSellingViewBody(),
    );
  }
}
