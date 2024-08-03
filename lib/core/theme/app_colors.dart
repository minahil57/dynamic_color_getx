import 'package:flutter/material.dart';

import '../imports/external_imports.dart';

class ColorController extends GetxController {
  // Initial colors using the values you provided
  var primaryColor = const Color(0xFFD17E06).obs; // Default Orange
  var primaryColorDark = const Color(0xFFD17E00).obs;

  void updateColors(Color newPrimary, Color newPrimaryDark) {
    primaryColor.value = newPrimary;
    primaryColorDark.value = newPrimaryDark;
  }
}
const Color kcDarkGreyColor = Color(0xFF1A1B1E);
const Color kcMediumGrey = Color(0xFF474A54);
const Color kcLightGrey = Color.fromARGB(255, 187, 187, 187);
const Color kcVeryLightGrey = Color(0xFFE3E3E3);
const Color kcBackgroundColor = kcWhitecolor;
const Color kcWhitecolor = Colors.white;
const Color kcBlackColor = Colors.black;
const Color kcRedColor = Colors.red;
const Color kcGreenColor = Colors.green;