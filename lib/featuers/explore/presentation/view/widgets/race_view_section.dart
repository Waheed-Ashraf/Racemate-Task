import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/custom_search_textfield.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/filter_row.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/races_list.dart';

class RaceViewSection extends StatelessWidget {
  const RaceViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: CustomSearchTextField(),
          ),
          // filter Section ==================>>>>>>
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FilterRowSection(),
          ),

          // Race Section ==================>>>>>>

          const Padding(
            padding: EdgeInsets.only(top: 16, right: 8, left: 8),
            child: RacesList(),
          ),
        ],
      ),
    );
  }
}
