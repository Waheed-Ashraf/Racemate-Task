import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';

class FilterItem extends StatelessWidget {
  final Color backgroundColor;
  final String filtarName;

  const FilterItem(
      {super.key, required this.backgroundColor, required this.filtarName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: ColorPallet.blueColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: Row(
          children: [
            Text(
              filtarName,
              style: AppStyles.styleSubTitle14.copyWith(
                color: ColorPallet.blueColor,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Icon(
              FontAwesomeIcons.chevronDown,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
