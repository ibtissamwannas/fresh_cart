import 'package:flutter/material.dart';
import 'package:fresh_cart/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fresh_cart/features/home/presentation/widget/navigation_bar_item.dart';

class CustomButtonNavigationBar extends StatefulWidget {
  const CustomButtonNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomButtonNavigationBar> createState() =>
      _CustomButtonNavigationBarState();
}

class _CustomButtonNavigationBarState extends State<CustomButtonNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
          children: bottomNavigationBarItems.asMap().entries.map((e) {
        var index = e.key;
        var entity = e.value;
        return Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.onItemTapped(index);
              });
            },
            child: NavigationBarItem(
              bottomNavigationBarEntity: entity,
              isSelected: selectedIndex == index,
            ),
          ),
        );
      }).toList()),
    );
  }
}
