

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qfinity_finance_modeule/core/theme/app_colors.dart';

TextStyle getBoldStyle({
  Color color = kcBlackColor,
  double fontSize = 24,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
TextStyle getRegularBoldStyle({
  Color color = kcBlackColor,
  double fontSize = 24,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle getMediumStyle({
  Color color = kcBlackColor,
  double fontSize = 14,

}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w500,
  );
}

TextStyle getRegularStyle({
  Color color = kcBlackColor,
  double fontSize = 12,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    color: color,
    letterSpacing: -0.5,
  );
}
