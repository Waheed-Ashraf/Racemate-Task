import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/core/widgets/custom_button.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_bottom_sheet_row.dart';

class TypeFilterBottomSheet extends StatelessWidget {
  const TypeFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            indent: 150,
            endIndent: 150,
            thickness: 2,
            color: ColorPallet.secondBlueColor,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Type Filter',
            style: AppStyles.styleTitleBold16,
          ),
          FilterRow(
            onChanged: () {},
            filterName: "Virtual",
          ),
          FilterRow(
            onChanged: () {},
            filterName: "Real-Time-Events",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomButton(
              text: 'Save',
              onPressed: () {
                Navigator.pop(context);
              },
              color: ColorPallet.secondaryColor,
            ),
          )
        ],
      ),
    );
  }
}
