import 'enums.dart';

class ProductFilters {
  final int? id;
  final Sorting? sorting;
  final IntendedFor? intendedFor;
  final SkinType? skinType;
  final ProductType? productType;
  final SkinProblem? skinProblem;
  final ProductLine? productLine;
  final Effect? effect;
  final bool? sale;



  ProductFilters({
    this.id,
    this.sorting,
    this.intendedFor,
    this.skinType,
    this.productType,
    this.skinProblem,
    this.productLine,
    this.effect,
    this.sale,
  });
}