part of './theme.dart';

ThemeData CreateThemeData() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.colors,
      ThemeTextStyles.textStyles,
      ThemeGradients.gradients,
    ],
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.white,
      titleTextStyle: customTitleSettings.copyWith(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: customTitleSettings.copyWith(
        color: AppColors.black,
      ),
    ),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  );
}