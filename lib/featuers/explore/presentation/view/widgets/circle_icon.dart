import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';

class CircleIcon extends StatelessWidget {
  final Color iconColor;
  final IconData circleIcon;
  const CircleIcon(
      {super.key, required this.circleIcon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: ColorPallet.secondaryColor,
      child: Icon(
        circleIcon,
        color: iconColor,
      ),
    );
  }
}
