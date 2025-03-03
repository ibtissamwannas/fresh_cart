import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveItem extends StatelessWidget {
  final String assets;
  const InactiveItem({super.key, required this.assets});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assets);
  }
}
