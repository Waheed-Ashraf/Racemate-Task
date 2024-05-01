import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';

abstract class AppStyles {
  static TextStyle styleTitleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    fontFamily: 'Roboto',
    color: ColorPallet.primaryColor,
  );
  static TextStyle styleTitleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    color: ColorPallet.secondBlueColor,
  );
  static TextStyle styleSubTitle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    color: ColorPallet.blueColor,
  );
}
