import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

class AppTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 26,
    // fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle heading2 = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 18,
    // fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle body = TextStyle(
    fontFamily: AppFonts.secondary,
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: AppFonts.secondary,
    fontSize: 14,
    color: Color.fromARGB(255, 187, 187, 187),
  );

  static const TextStyle button = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 14,
    // fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}
