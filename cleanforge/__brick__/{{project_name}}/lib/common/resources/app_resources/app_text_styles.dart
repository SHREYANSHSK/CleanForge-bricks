import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_sizes.dart';
import 'package:{{package_name}}/common/resources/app_resources/app_colors.dart';


final TextStyle jetBrainsMono = GoogleFonts.jetBrainsMono(
  fontSize: AppSizes.f14,
);

final TextStyle inter = GoogleFonts.inter(
  fontSize: AppSizes.f14,
);


class AppTextStyles {
  AppTextStyles._();

  // Font sizes
  static double veryExtraMicroFontSize = AppSizes.f4;
  static double extraMicroFontSize = AppSizes.f6;
  static double microFontSize = AppSizes.f8;
  static double extraSmallFontSize = AppSizes.f10;
  static double smallFontSize = AppSizes.f12;
  static double defaultFontSize = AppSizes.f14;
  static double mediumFontSize = AppSizes.f16;
  static double largeFontSize = AppSizes.f18;
  static double extraLargeFontSize = AppSizes.f20;
  static double extraExtraLargeFontSize = AppSizes.f24;

  // Font weights
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;

  static const _defaultFontColor = AppColors.white;

  static TextStyle jetBrainsMono({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      TextStyle(
        fontFamily: 'JetBrainsMono',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: _defaultFontColor,
      );

  static TextStyle inter({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      TextStyle(
        fontFamily: 'Inter',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: _defaultFontColor,
      );


  /// jetBrainsMono text styles
  static final jetBExtraExtraLargeBold = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: bold,
  );
  static final jetBExtraLargeBold = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: bold,
  );
  static final jetBLargeBold = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: bold,
  );
  static final jetBMediumBold = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: bold,
  );
  static final jetBNormalBold = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: bold,
  );
  static final jetBSmallBold = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: bold,
  );
  static final jetBExtraSmallBold = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: bold,
  );
  static final jetBMicroBold = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: bold,
  );

  static final jetBVeryExtraMicroLight = jetBrainsMono(
    fontSize: veryExtraMicroFontSize,
    fontWeight: regular,
  );
  static final jetBExtraMicroBold = jetBrainsMono(
    fontSize: extraMicroFontSize,
    fontWeight: bold,
  );

  static final jetBExtraExtraLargeExtraBold = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: extraBold,
  );
  static final jetBExtraLargeExtraBold = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: extraBold,
  );
  static final jetBLargeExtraBold = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: extraBold,
  );
  static final jetBMediumExtraBold = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: extraBold,
  );
  static final jetBNormalExtraBold = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: extraBold,
  );
  static final jetBSmallExtraBold = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: extraBold,
  );
  static final jetBExtraSmallExtraBold = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: extraBold,
  );
  static final jetBMicroExtraBold = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: extraBold,
  );

    static final jetBExtraExtraLargeLight = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: light,
  );
  static final jetBExtraLargeLight = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: light,
  );
  static final jetBLargeLight = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: light,
  );
  static final jetBMediumLight = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: light,
  );
  static final jetBNormalLight = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: light,
  );
  static final jetBSmallLight = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: light,
  );
  static final jetBExtraSmallLight = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: light,
  );
  static final jetBMicroLight = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: light,
  );

  static final jetBExtraExtraLargeSemiBold = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: semiBold,
  );
  static final jetBExtraLargeSemiBold = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: semiBold,
  );
  static final jetBLargeSemiBold = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: semiBold,
  );
  static final jetBMediumSemiBold = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: semiBold,
  );
  static final jetBNormalSemiBold = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: semiBold,
  );
  static final jetBSmallSemiBold = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: semiBold,
  );
  static final jetBExtraSmallSemiBold = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: semiBold,
  );
  static final jetBMicroSemiBold = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: semiBold,
  );

  static final jetBExtraExtraLargeMedium = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: medium,
  );
  static final jetBExtraExtraLargeMediumLight = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: light,
  );
  static final jetBExtraLargeMedium = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: medium,
  );
  static final jetBExtraLargeMediumLight = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: light,
  );
  static final jetBNormalMediumLight= jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: light,
  );
  static final jetBLargeMedium = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: medium,
  );
  static final jetBLargeMediumLight = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: light,
  );
  static final jetBExtraSmallRegularLight = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: light,
  );
  static final jetBSmallRegularLight = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: light,
  );
  static final jetBrainsMonoMediumMedium = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: medium,
  );
  static final jetBrainsMonoNormalMedium = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: medium,
  );
  static final jetBrainsMonoSmallMedium = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: medium,
  );
  static final jetBrainsMonoExtraSmallMedium = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: medium,
  );
  static final jetBMicroMedium = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: medium,
  );

  static final jetBExtraExtraLargeRegular = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: regular,
  );
  static final jetBExtraLargeRegular = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: regular,
  );
  static final jetBLargeRegular = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: regular,
  );
  static final jetBMediumRegular = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: regular,
  );
  static final jetBNormalRegular = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: regular,
  );
  static final jetBSmallRegular = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: regular,
  );
  static final jetBExtraSmallRegular = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: regular,
  );
  static final jetBMicroRegular = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: regular,
  );

  // Additional JetBrainsMono styles with new weights
  static final jetBExtraExtraLargeThin = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: thin,
  );
  static final jetBExtraLargeThin = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: thin,
  );
  static final jetBLargeThin = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: thin,
  );
  static final jetBMediumThin = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: thin,
  );
  static final jetBNormalThin = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: thin,
  );
  static final jetBSmallThin = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: thin,
  );
  static final jetBExtraSmallThin = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: thin,
  );
  static final jetBMicroThin = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: thin,
  );

  static final jetBExtraExtraLargeBlack = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: black,
  );
  static final jetBExtraLargeBlack = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: black,
  );
  static final jetBLargeBlack = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: black,
  );
  static final jetBMediumBlack = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: black,
  );
  static final jetBNormalBlack = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: black,
  );
  static final jetBSmallBlack = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: black,
  );
  static final jetBExtraSmallBlack = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: black,
  );
  static final jetBMicroBlack = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: black,
  );

  // Extra Light weight styles for JetBrainsMono
  static final jetBExtraExtraLargeExtraLight = jetBrainsMono(
    fontSize: extraExtraLargeFontSize,
    fontWeight: extraLight,
  );
  static final jetBExtraLargeExtraLight = jetBrainsMono(
    fontSize: extraLargeFontSize,
    fontWeight: extraLight,
  );
  static final jetBLargeExtraLight = jetBrainsMono(
    fontSize: largeFontSize,
    fontWeight: extraLight,
  );
  static final jetBMediumExtraLight = jetBrainsMono(
    fontSize: mediumFontSize,
    fontWeight: extraLight,
  );
  static final jetBNormalExtraLight = jetBrainsMono(
    fontSize: defaultFontSize,
    fontWeight: extraLight,
  );
  static final jetBSmallExtraLight = jetBrainsMono(
    fontSize: smallFontSize,
    fontWeight: extraLight,
  );
  static final jetBExtraSmallExtraLight = jetBrainsMono(
    fontSize: extraSmallFontSize,
    fontWeight: extraLight,
  );
  static final jetBMicroExtraLight = jetBrainsMono(
    fontSize: microFontSize,
    fontWeight: extraLight,
  );

  static final interExtraExtraLargeBold = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: bold,
  );
  static final interExtraLargeBold = inter(
    fontSize: extraLargeFontSize,
    fontWeight: bold,
  );
  static final interLargeBold = inter(
    fontSize: largeFontSize,
    fontWeight: bold,
  );
  static final interMediumBold = inter(
    fontSize: mediumFontSize,
    fontWeight: bold,
  );
  static final interNormalBold = inter(
    fontSize: defaultFontSize,
    fontWeight: bold,
  );
  static final interSmallBold = inter(
    fontSize: smallFontSize,
    fontWeight: bold,
  );
  static final interExtraSmallBold = inter(
    fontSize: extraSmallFontSize,
    fontWeight: bold,
  );
  static final interMicroBold = inter(
    fontSize: microFontSize,
    fontWeight: bold,
  );
  static final interExtraExtraLargeExtraBold = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: extraBold,
  );
  static final interExtraLargeExtraBold = inter(
    fontSize: extraLargeFontSize,
    fontWeight: extraBold,
  );
  static final interLargeExtraBold = inter(
    fontSize: largeFontSize,
    fontWeight: extraBold,
  );
  static final interMediumExtraBold = inter(
    fontSize: mediumFontSize,
    fontWeight: extraBold,
  );
  static final interNormalExtraBold = inter(
    fontSize: defaultFontSize,
    fontWeight: extraBold,
  );
  static final interSmallExtraBold = inter(
    fontSize: smallFontSize,
    fontWeight: extraBold,
  );
  static final interExtraSmallExtraBold = inter(
    fontSize: extraSmallFontSize,
    fontWeight: extraBold,
  );
  static final interMicroExtraBold = inter(
    fontSize: microFontSize,
    fontWeight: extraBold,
  );

  static final interExtraExtraLargeSemiBold = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: semiBold,
  );
  static final interExtraLargeSemiBold = inter(
    fontSize: extraLargeFontSize,
    fontWeight: semiBold,
  );
  static final interLargeSemiBold = inter(
    fontSize: largeFontSize,
    fontWeight: semiBold,
  );
  static final interMediumSemiBold = inter(
    fontSize: mediumFontSize,
    fontWeight: semiBold,
  );
  static final interNormalSemiBold = inter(
    fontSize: defaultFontSize,
    fontWeight: semiBold,
  );
  static final interSmallSemiBold = inter(
    fontSize: smallFontSize,
    fontWeight: semiBold,
  );
  static final interExtraSmallSemiBold = inter(
    fontSize: extraSmallFontSize,
    fontWeight: semiBold,
  );
  static final interMicroSemiBold = inter(
    fontSize: microFontSize,
    fontWeight: semiBold,
  );

  static final interExtraExtraLargeMedium = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: medium,
  );
  static final interExtraLargeMedium = inter(
    fontSize: extraLargeFontSize,
    fontWeight: medium,
  );
  static final interLargeMedium = inter(
    fontSize: largeFontSize,
    fontWeight: medium,
  );
  static final interMediumMedium = inter(
    fontSize: mediumFontSize,
    fontWeight: medium,
  );
  static final interNormalMedium = inter(
    fontSize: defaultFontSize,
    fontWeight: medium,
  );
  static final interNormalLight = inter(
    fontSize: defaultFontSize,
    fontWeight: light,
  );
  static final interSmallMedium = inter(
    fontSize: smallFontSize,
    fontWeight: medium,
  );
  static final interExtraSmallMedium = inter(
    fontSize: extraSmallFontSize,
    fontWeight: medium,
  );
  static final interMicroMedium = inter(
    fontSize: microFontSize,
    fontWeight: medium,
  );

  static final interExtraExtraLargeRegular = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: regular,
  );
  static final interExtraLargeRegular = inter(
    fontSize: extraLargeFontSize,
    fontWeight: regular,
  );
  static final interLargeRegular = inter(
    fontSize: largeFontSize,
    fontWeight: regular,
  );
  static final interMediumRegular = inter(
    fontSize: mediumFontSize,
    fontWeight: regular,
  );
  static final interNormalRegular = inter(
    fontSize: defaultFontSize,
    fontWeight: regular,
  );
  static final interSmallRegular = inter(
    fontSize: smallFontSize,
    fontWeight: regular,
  );
  static final interExtraSmallRegular = inter(
    fontSize: extraSmallFontSize,
    fontWeight: regular,
  );
  static final interExtraSmallLight = inter(
    fontSize: extraSmallFontSize,
    fontWeight: light,
  );
  static final interMicroRegular = inter(
    fontSize: microFontSize,
    fontWeight: regular,
  );

  // Additional Inter styles with new weights
  static final interExtraExtraLargeThin = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: thin,
  );
  static final interExtraLargeThin = inter(
    fontSize: extraLargeFontSize,
    fontWeight: thin,
  );
  static final interLargeThin = inter(
    fontSize: largeFontSize,
    fontWeight: thin,
  );
  static final interMediumThin = inter(
    fontSize: mediumFontSize,
    fontWeight: thin,
  );
  static final interNormalThin = inter(
    fontSize: defaultFontSize,
    fontWeight: thin,
  );
  static final interSmallThin = inter(
    fontSize: smallFontSize,
    fontWeight: thin,
  );
  static final interExtraSmallThin = inter(
    fontSize: extraSmallFontSize,
    fontWeight: thin,
  );
  static final interMicroThin = inter(
    fontSize: microFontSize,
    fontWeight: thin,
  );

  static final interExtraExtraLargeBlack = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: black,
  );
  static final interExtraLargeBlack = inter(
    fontSize: extraLargeFontSize,
    fontWeight: black,
  );
  static final interLargeBlack = inter(
    fontSize: largeFontSize,
    fontWeight: black,
  );
  static final interMediumBlack = inter(
    fontSize: mediumFontSize,
    fontWeight: black,
  );
  static final interNormalBlack = inter(
    fontSize: defaultFontSize,
    fontWeight: black,
  );
  static final interSmallBlack = inter(
    fontSize: smallFontSize,
    fontWeight: black,
  );
  static final interExtraSmallBlack = inter(
    fontSize: extraSmallFontSize,
    fontWeight: black,
  );
  static final interMicroBlack = inter(
    fontSize: microFontSize,
    fontWeight: black,
  );

  // Extra Light weight styles for Inter
  static final interExtraExtraLargeExtraLight = inter(
    fontSize: extraExtraLargeFontSize,
    fontWeight: extraLight,
  );
  static final interExtraLargeExtraLight = inter(
    fontSize: extraLargeFontSize,
    fontWeight: extraLight,
  );
  static final interLargeExtraLight = inter(
    fontSize: largeFontSize,
    fontWeight: extraLight,
  );
  static final interMediumExtraLight = inter(
    fontSize: mediumFontSize,
    fontWeight: extraLight,
  );
  static final interNormalExtraLight = inter(
    fontSize: defaultFontSize,
    fontWeight: extraLight,
  );
  static final interSmallExtraLight = inter(
    fontSize: smallFontSize,
    fontWeight: extraLight,
  );
  static final interExtraSmallExtraLight = inter(
    fontSize: extraSmallFontSize,
    fontWeight: extraLight,
  );
  static final interMicroExtraLight = inter(
    fontSize: microFontSize,
    fontWeight: extraLight,
  );

}
