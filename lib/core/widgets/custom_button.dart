import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.color,
      this.withBorder = false,
      required this.onPressed});

  final String text;
  final Color? color;
  final bool withBorder;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: withBorder
              ? BorderSide(color: ColorPallet.secondaryColor, width: 2)
              : BorderSide.none),
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: AppStyles.styleTitleSemiBold16.copyWith(
          color: color == ColorPallet.primaryColor
              ? Colors.white
              : ColorPallet.primaryColor,
        ),
      ),
    );
  }
}
