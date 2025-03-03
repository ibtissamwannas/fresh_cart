import 'package:flutter/material.dart';
import 'package:fresh_cart/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fresh_cart/features/home/presentation/widget/active_item.dart';
import 'package:fresh_cart/features/home/presentation/widget/in_active_item.dart';

class NavigationBarItem extends StatelessWidget {
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  const NavigationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.activeImage,
            text: bottomNavigationBarEntity.name,
          )
        : InactiveItem(
            assets: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
