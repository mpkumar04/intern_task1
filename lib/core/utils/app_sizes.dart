import 'package:flutter/material.dart';

class AppSizes {
  // base spacing
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  // corners
  static const double r8 = 8.0;
  static const double r12 = 12.0;
  static const double r16 = 16.0;
  static const double r20 = 20.0;

  // responsive helpers
  static double screenWidth(BuildContext ctx) => MediaQuery.of(ctx).size.width;
  static double screenHeight(BuildContext ctx) => MediaQuery.of(ctx).size.height;
  static double wPct(BuildContext ctx, double pct) => screenWidth(ctx) * pct;
  static double hPct(BuildContext ctx, double pct) => screenHeight(ctx) * pct;
}
