import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/core/widgets/custom_button.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_bottom_sheet_row.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_item.dart';

class FilterRowSection extends StatelessWidget {
  const FilterRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Type Filter ==========>>>>>>>>>

          FilterItem(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: .35,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                                filterName: "RealTimeEvent",
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
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
                  });
            },
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Type",
          ),
          const SizedBox(
            width: 8,
          ),
          FilterItem(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: .35,
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
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
                      ),
                    );
                  });
            },
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Location",
          ),
          const SizedBox(
            width: 8,
          ),
          FilterItem(
            onTap: () {},
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Distance",
          ),
          const SizedBox(
            width: 8,
          ),
          FilterItem(
            onTap: () {},
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Date",
          ),
        ],
      ),
    );
  }
}
