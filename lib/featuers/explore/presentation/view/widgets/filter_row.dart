import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_item.dart';

class FilterRowSection extends StatelessWidget {
  const FilterRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FilterItem(
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Type",
          ),
          const SizedBox(
            width: 8,
          ),
          FilterItem(
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Location",
          ),
          const SizedBox(
            width: 8,
          ),
          FilterItem(
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Distance",
          ),
          const SizedBox(
            width: 8,
          ),
          FilterItem(
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Date",
          ),
        ],
      ),
    );
  }
}
