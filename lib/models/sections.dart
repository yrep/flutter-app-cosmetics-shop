import 'package:first_test/models/enums.dart';
import 'package:flutter/material.dart';
import 'filters.dart';

class ImagePosition {
  final double top;
  final double left;
  final double rotation;
  final double scale;

  ImagePosition({
    required this.top,
    required this.left,
    this.rotation = 0.0,
    this.scale = 1.0,
  });
}

class SectionCardData {
  Color? containerBackgroundColor;
  final String sectionTitle;
  final String imagePath;
  String? imagePathAdditional;
  bool isCutOut;
  bool isDuplicated;
  final ImagePosition? position1;
  final ImagePosition? position2;
  final ProductFilters? filters;

  SectionCardData({
    this.containerBackgroundColor,
    required this.sectionTitle,
    required this.imagePath,
    this.imagePathAdditional,
    this.isCutOut = false,
    this.isDuplicated = false,
    this.position1,
    this.position2,
    this.filters});

}


final List<SectionCardData> testSectionCards = [
  SectionCardData(
    containerBackgroundColor: Color(0xFFF8E8EB),
    sectionTitle: "Наборы",
    imagePath: 'assets/images/product_03.png',
    imagePathAdditional: 'assets/images/product_09_set.png',
    isCutOut: true,
    isDuplicated: false,
    position1: ImagePosition(top: 14.0, left: -14, scale: 1),
    position2: ImagePosition(top: 6.0, left: 2.0, scale: 2.2),
    filters: ProductFilters(
      productType: ProductType.productSet,
      ),
  ),
  SectionCardData(
    sectionTitle: "Для лица",
    imagePath: 'assets/images/section_02.png',
    filters: ProductFilters(
      productLine: ProductLine.foreverYoung,
    ),
  ),
  SectionCardData(
    containerBackgroundColor: Color(0xFFE4F3F8),
    sectionTitle: "Для глаз",
    imagePath: 'assets/images/product_07.png',
    isCutOut: true,
    isDuplicated: true,
    position1: ImagePosition(top: 10.0, left: -16.0, scale: 1.8,),
    position2: ImagePosition(top: -90.0, left: -60.0, scale: 2.0,),
    filters: ProductFilters(
      intendedFor: IntendedFor.eyes,
    ),
  ),
  SectionCardData(
    sectionTitle: "Для тела",
    imagePath: 'assets/images/section_04.png',
    filters: ProductFilters(
      id: 3,
    ),
  ),
  SectionCardData(
    sectionTitle: "Умывание",
    imagePath: 'assets/images/section_05.png',
    filters: ProductFilters(
      intendedFor: IntendedFor.face,
    ),
  ),

];