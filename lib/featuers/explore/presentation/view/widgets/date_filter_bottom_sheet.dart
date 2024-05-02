import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/core/widgets/custom_button.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/text_field_time_picker.dart';

class DateFilterBottomSheet extends StatefulWidget {
  const DateFilterBottomSheet({super.key});

  @override
  State<DateFilterBottomSheet> createState() => _DateFilterBottomSheetState();
}

class _DateFilterBottomSheetState extends State<DateFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Column(
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
              'Race Date',
              style: AppStyles.styleTitleBold16,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "From",
                  style: AppStyles.styleSubTitle14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: CustomTextField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "To",
                  style: AppStyles.styleSubTitle14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: CustomTextField(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                  color: ColorPallet.secondaryColor,
                  text: "Save",
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ),
        Positioned(
          right: 16,
          top: 14,
          child: TextButton(
              onPressed: () {},
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.red,
                ),
              )),
        )
      ]),
    );
  }
}
