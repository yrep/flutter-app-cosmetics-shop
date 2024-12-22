part of './theme.dart';

// COLORS

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color? productBgColor;
  final Color? sectionPreviewPink;

  const ThemeColors({
    required this.productBgColor,
    required this.sectionPreviewPink,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? productBgColor,
    Color? sectionPreviewPink,
  }) {
    return ThemeColors(
      productBgColor : productBgColor ?? this.productBgColor,
      sectionPreviewPink : sectionPreviewPink ?? this.sectionPreviewPink
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(ThemeExtension<ThemeColors>? other, double t,) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      productBgColor: Color.lerp(productBgColor, other.productBgColor, t)!,
      sectionPreviewPink: Color.lerp(sectionPreviewPink, other.sectionPreviewPink, t)!,
    );
  }

  static get colors => ThemeColors(
    productBgColor: AppColors.customGrey,
    sectionPreviewPink: AppColors.previewBgPink,
  );

}

// TEXT STYLES

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle? heroTitleStyle;
  final TextStyle? heroTextStyle;
  final TextStyle? heroButtonTextStyle;
  final TextStyle? sectionTitleStyle;
  final TextStyle? productListTitleStyle;
  final TextStyle? priceTextStyle;
  final TextStyle? oldPriceTextStyle;

  const ThemeTextStyles({
    required this.heroTitleStyle,
    required this.heroTextStyle,
    required this.heroButtonTextStyle,
    required this.sectionTitleStyle,
    required this.productListTitleStyle,
    required this.priceTextStyle,
    required this.oldPriceTextStyle,
    });

  @override
  ThemeTextStyles copyWith({
    TextStyle? heroTitleStyle,
    TextStyle? heroTextStyle,
    TextStyle? heroButtonTextStyle,
    TextStyle? sectionTitleStyle,
    TextStyle? productListTitleStyle,
    TextStyle? priceTextStyle,
    TextStyle? oldPriceTextStyle,
  }) {
    return ThemeTextStyles(
      heroTitleStyle: heroTitleStyle ?? this.heroTitleStyle,
      heroTextStyle: heroTextStyle ?? this.heroTextStyle,
      heroButtonTextStyle: heroButtonTextStyle ?? this.heroButtonTextStyle,
      sectionTitleStyle: sectionTitleStyle ?? this.sectionTitleStyle,
      productListTitleStyle: productListTitleStyle ?? this.productListTitleStyle,
      priceTextStyle: priceTextStyle ?? this.priceTextStyle,
      oldPriceTextStyle: oldPriceTextStyle ?? this.oldPriceTextStyle,
    );
  }

  @override
  ThemeTextStyles lerp(ThemeTextStyles? other, double t) {
    if (other == null) {
      return this;
    }
    return ThemeTextStyles(
      heroTitleStyle: TextStyle.lerp(heroTitleStyle, other.heroTitleStyle, t)!,
      heroTextStyle: TextStyle.lerp(heroTextStyle, other.heroTextStyle, t)!,
      heroButtonTextStyle: TextStyle.lerp(heroButtonTextStyle, other.heroButtonTextStyle, t)!,
      sectionTitleStyle: TextStyle.lerp(sectionTitleStyle, other.sectionTitleStyle, t)!,
      productListTitleStyle: TextStyle.lerp(productListTitleStyle, other.productListTitleStyle, t)!,
      priceTextStyle: TextStyle.lerp(priceTextStyle, other.priceTextStyle, t)!,
      oldPriceTextStyle: TextStyle.lerp(oldPriceTextStyle, other.oldPriceTextStyle, t)!,
    );
  }

  static get textStyles => ThemeTextStyles(
  heroTitleStyle: heroTitleStyleSettings,
  heroTextStyle: heroTextStyleSettings,
  heroButtonTextStyle: heroButtonTextStyleSettings,
  sectionTitleStyle: sectionTitleTextSettings,
  productListTitleStyle: productListTitleSettings,
  priceTextStyle: priceTextSettings,
  oldPriceTextStyle: crossedOutPriceTextSettings,
  );

}

// GRADIENTS

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  final LinearGradient? productListNewGradient;
  final LinearGradient? productListSaleGradient;
  final LinearGradient? productListHitsGradient;

  const ThemeGradients({
    this.productListNewGradient,
    this.productListSaleGradient,
    this.productListHitsGradient,
  });

  @override
  ThemeGradients copyWith({
    LinearGradient? productListNewGradient,
    LinearGradient? productListSaleGradient,
    LinearGradient? productListHitsGradient,
  }) {
    return ThemeGradients(
      productListNewGradient: productListNewGradient ?? this.productListNewGradient,
      productListSaleGradient: productListSaleGradient ?? this.productListSaleGradient,
      productListHitsGradient: productListHitsGradient ?? this.productListHitsGradient,
    );
  }

  @override
  ThemeGradients lerp(ThemeGradients? other, double t) {
    if (other == null) {
      return this;
    }
    return ThemeGradients(
      productListNewGradient: LinearGradient.lerp(productListNewGradient, other.productListNewGradient, t)!,
      productListSaleGradient: LinearGradient.lerp(productListSaleGradient, other.productListSaleGradient, t)!,
      productListHitsGradient: LinearGradient.lerp(productListHitsGradient, other.productListHitsGradient, t)!,
    );
  }

  static get gradients => ThemeGradients(
    productListNewGradient: gradientTeal,
    productListSaleGradient: gradientPink,
    productListHitsGradient: gradientOrange,
  );
}