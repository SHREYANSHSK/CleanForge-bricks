
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppGradients {
  static const cyanPurpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.cyan,
      AppColors.purple,
    ],
  );
  static const blackGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    colors: [
      AppColors.black,
    ],
  );
static const tealDarkTealGradient = LinearGradient(
  colors: [AppColors.teal, AppColors.darkTeal86],
);
}