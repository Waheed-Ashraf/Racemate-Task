import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';

class FilterRow extends StatefulWidget {
  final void Function() onChanged;
  final String filterName;
  const FilterRow(
      {super.key, required this.filterName, required this.onChanged});

  @override
  State<FilterRow> createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.filterName,
            style: AppStyles.styleTitleSemiBold16
                .copyWith(color: ColorPallet.secondaryColor),
          ),
          Checkbox(
              activeColor: ColorPallet.secondBlueColor,
              value: isChecked,
              onChanged: (newBool) {
                widget.onChanged;
                setState(() {
                  isChecked = newBool;
                });
              })
        ],
      ),
    );
  }
}
