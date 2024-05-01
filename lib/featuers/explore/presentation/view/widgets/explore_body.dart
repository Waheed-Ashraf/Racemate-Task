import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/circle_icon.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/race_view_section.dart';

class ExpolreBody extends StatefulWidget {
  const ExpolreBody({super.key});

  @override
  State<ExpolreBody> createState() => _ExpolreBodyState();
}

class _ExpolreBodyState extends State<ExpolreBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Container(
            width: double.infinity,
            color: ColorPallet.whiteColor.withOpacity(.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.personRunning,
                    color: ColorPallet.secondaryColor,
                  ),
                  Text(
                    'RACEMATE',
                    style: AppStyles.styleTitleBold16
                        .copyWith(color: ColorPallet.secondaryColor),
                  ),
                  const Spacer(),
                  Icon(
                    FontAwesomeIcons.solidBell,
                    color: ColorPallet.secondaryColor,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  CircleIcon(
                      circleIcon: Icons.person,
                      iconColor: ColorPallet.primaryColor),
                ],
              ),
            ),
          ),
          backgroundColor: ColorPallet.primaryColor,
          bottom: TabBar(
            indicatorColor: ColorPallet.secondaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: ColorPallet.secondBlueColor,
            labelStyle: AppStyles.styleTitleBold16,
            labelPadding: EdgeInsets.zero,
            unselectedLabelColor: ColorPallet.secondWhiteColor,
            labelColor: ColorPallet.whiteColor,
            tabs: const [
              Tab(
                text: "RACES",
              ),
              Tab(
                text: "CHALLENGES",
              ),
              Tab(
                text: "CMMUNITY",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            RaceViewSection(),
            Center(
              child: Text("CHALLENGES"),
            ),
            Center(
              child: Text("CMMUNITY"),
            ),
          ],
        ),
      ),
    );
  }
}
