import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/date_filter_bottom_sheet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/distance_filter_bottom_sheet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_item.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/location_filter_bottom_sheet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/type_filter_bottom_sheet.dart';

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
                    return const FractionallySizedBox(
                      heightFactor: .38,
                      child: TypeFilterBottomSheet(),
                    );
                  });
            },
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Type",
          ),
          const SizedBox(
            width: 8,
          ),
          // Location Filter ==========>>>>>>>>>>>>>>>>>>>

          FilterItem(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const FractionallySizedBox(
                        heightFactor: .38, child: LocationFilterBottomSheet());
                  });
            },
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Location",
          ),
          const SizedBox(
            width: 8,
          ),

          // Distance Filter ==================>>>>>>>>>>>
          FilterItem(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const FractionallySizedBox(
                        heightFactor: .35, child: DistanceFilterBottomSheet());
                  });
            },
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Distance",
          ),
          const SizedBox(
            width: 8,
          ),

          // Date Filter ============>>>>>>>>>>>>>
          FilterItem(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return const FractionallySizedBox(
                        heightFactor: .5, child: DateFilterBottomSheet());
                  });
            },
            backgroundColor: ColorPallet.whiteColor,
            filtarName: "Date",
          ),
        ],
      ),
    );
  }
}
