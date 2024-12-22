import 'package:first_test/models/enums.dart';

import 'filters.dart';

class HeroCardData {
  final String title;
  final String description;
  final String imageUrl;
  final String buttonText;
  final ProductFilters? filters;

  HeroCardData({
          required this.title,
          required this.description,
          required this.imageUrl,
          required this.buttonText,
          this.filters,});
}


final List<HeroCardData> testHeroCards = [
  HeroCardData(
      imageUrl: 'assets/images/hero_01.png',
      title: 'Скидка -15%',
      description: 'Сыворотка \nHA EYE & NECK SERUM',
      buttonText: 'Перейти к акции',
      filters: ProductFilters(
        id: 7,
      ),
  ),
  HeroCardData(
      imageUrl: 'assets/images/hero_02.png',
      title: '5 средств',
      description: 'для ухода за сухой\nкожей зимой',
      buttonText: 'К разделу',
      filters: ProductFilters(
        productLine: ProductLine.muse,
      ),
  ),
  HeroCardData(
      imageUrl: 'assets/images/hero_03.png',
      title: 'Мужской уход',
      description: 'Для чувствительной \nи проблемной кожи',
      buttonText: 'К разделу',
      filters: ProductFilters(
        skinProblem: SkinProblem.acne,
      ),
  ),
];