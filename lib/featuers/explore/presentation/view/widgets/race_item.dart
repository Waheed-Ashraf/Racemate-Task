import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/models/race_model.dart';

class RaceItem extends StatelessWidget {
  final RaceModel raceModel;
  const RaceItem({super.key, required this.raceModel});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        height: 180,
        width: double.infinity,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.asset(
                  raceModel.image,
                  width: 117,
                  height: MediaQuery.of(context).size.height * .3,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .56,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        raceModel.name,
                        style: AppStyles.styleTitleBold16,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      if (raceModel.organizer == null)
                        const SizedBox(
                          height: 20,
                        )
                      else
                        Text(
                          "Organized By \n${raceModel.organizer} ",
                          style: AppStyles.styleSubTitle14
                              .copyWith(color: ColorPallet.secondBlueColor),
                        ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.mapLocation,
                            size: 12,
                            color: ColorPallet.blueColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              formatNumbers(raceModel.distances),
                              style: AppStyles.styleSubTitle14,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.calendar,
                            size: 12,
                            color: ColorPallet.blueColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            formatDate(raceModel.date),
                            style: AppStyles.styleSubTitle14,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.locationPin,
                            size: 12,
                            color: ColorPallet.blueColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .45,
                            child: Text(
                              "${raceModel.city}, ${raceModel.country}",
                              style: AppStyles.styleSubTitle14,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 20,
        right: 10,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.shareNodes,
            size: 24,
            color: ColorPallet.secondaryColor,
          ),
        ),
      ),
    ]);
  }

  String formatNumbers(String jsonString) {
    List<String> numbers = jsonString.split(',');
    List<String> formattedNumbers = [];

    for (String number in numbers) {
      String formattedNum = "${number}K";
      formattedNumbers.add(formattedNum);
    }

    return formattedNumbers.join(', ');
  }

  String formatDate(String dateString) {
    DateTime dateTime = DateTime.parse(dateString);

    String formattedDate = DateFormat('dd MMM, yyyy').format(dateTime);

    return formattedDate;
  }
}
