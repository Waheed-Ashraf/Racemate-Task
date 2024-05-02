import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/core/widgets/custom_button.dart';

class DistanceFilterBottomSheet extends StatefulWidget {
  const DistanceFilterBottomSheet({super.key});

  @override
  State<DistanceFilterBottomSheet> createState() =>
      _DistanceFilterBottomSheetState();
}

class _DistanceFilterBottomSheetState extends State<DistanceFilterBottomSheet> {
  RangeValues _values = const RangeValues(0, 200);
  final RangeValues _defaultValues = const RangeValues(0, 200);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(children: [
        Column(
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
              'Race Distance',
              style: AppStyles.styleTitleBold16,
            ),
            Container(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        ' ${_values.start.round()}-${_values.end.round()} KM',
                        style: AppStyles.styleSubTitle14,
                      ),
                    ),
                  ),
                  RangeSlider(
                    activeColor: ColorPallet.secondaryColor,
                    values: _values,
                    min: 0,
                    max: 200,
                    divisions: 200,
                    onChanged: (RangeValues values) {
                      setState(() {
                        _values = values;
                      });
                    },
                  ),
                ],
              ),
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
        Positioned(
          right: 16,
          top: 14,
          child: TextButton(
              onPressed: () {
                setState(() {
                  _values = _defaultValues;
                });
              },
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
