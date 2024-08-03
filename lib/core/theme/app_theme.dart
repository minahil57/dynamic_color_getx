import 'package:flutter/material.dart';

import '../imports/external_imports.dart';
import 'app_colors.dart';

ThemeData buildCustomTheme() {
  final ColorController colorController = Get.put(ColorController());
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: colorController.primaryColor.value,
    colorScheme: base.colorScheme.copyWith(
      primary: colorController.primaryColor.value,
      secondary: colorController.primaryColor.value,
    ),
    textTheme: _buildTextTheme(base.textTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith(
    displayLarge: GoogleFonts.poppins(
      textStyle: base.displayLarge!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: base.displayMedium!.copyWith(),
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: base.displaySmall!.copyWith(),
    ),
  )
      .apply(
    bodyColor: kcBlackColor,
    displayColor: kcBlackColor,
  );
}