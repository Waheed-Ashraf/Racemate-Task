import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/core/widgets/custom_button.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_bottom_sheet_row.dart';

class LocationFilterBottomSheet extends StatelessWidget {
  const LocationFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SingleChildScrollView(
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
                'Location Filter',
                style: AppStyles.styleTitleBold16,
              ),
              FilterRow(
                onChanged: () {},
                filterName: "Egypt",
              ),
              FilterRow(
                onChanged: () {},
                filterName: "Kanada",
              ),
              FilterRow(
                onChanged: () {},
                filterName: "Japan",
              ),
              FilterRow(
                onChanged: () {},
                filterName: "USA",
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
        ),
      ),
    );
  }
}
