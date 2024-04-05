import 'package:flutter/material.dart';

import 'app_constants.dart';

export 'app_constants.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.accentColor,
    // secondaryContainer: AppColors.lightBackgroundSecondary,
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.black),
      backgroundColor: AppColors.white,
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      )),
  listTileTheme: const ListTileThemeData(
    iconColor: AppColors.black,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.black,
  ),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: AppColors.black,
      fontSize: 30,
    ),
    labelMedium: TextStyle(
      color: AppColors.black,
      fontSize: 17,
    ),
    labelLarge: TextStyle(
      color: AppColors.black,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: AppColors.black,
      fontSize: 15,
    ),
    bodySmall: TextStyle(
      color: AppColors.black,
    ),
    titleSmall: TextStyle(
      color: AppColors.black,
    ),
  ),
);
