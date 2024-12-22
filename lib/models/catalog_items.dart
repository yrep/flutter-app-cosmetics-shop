import 'package:first_test/models/filters.dart';

import 'enums.dart';

class CatalogItem {
  final String title;
  final bool hasSubMenu;
  final bool hasIcon;
  final ProductFilters? filters;
  final List<CatalogItem>? subMenuItems;

  CatalogItem({
    required this.title,
    required this.hasSubMenu,
    this.hasIcon = false,
    this.filters,
    this.subMenuItems,
  });

}

List<CatalogItem> catalogItems = [
  CatalogItem(
      title: "Назначение",
      hasSubMenu: true,
      subMenuItems: intendedForItems),
  CatalogItem(
      title: "Тип средства",
      hasSubMenu: true,
      subMenuItems: productTypeItems),
  CatalogItem(
      title: "Тип кожи",
      hasSubMenu: true,
      subMenuItems: skinTypeItems),
  CatalogItem(
      title: "Линия косметики",
      hasSubMenu: true,
      subMenuItems: productLineItems),
  CatalogItem(
      title: "Наборы",
      hasSubMenu: false,
      filters: ProductFilters(
        productType: ProductType.productSet,
      )),
  CatalogItem(
      title: "Акции",
      hasSubMenu: false,
      hasIcon: true,
      filters: ProductFilters(
        sale: true,
      )),
  CatalogItem(
      title: "Консультация \nс косметологом ",
      hasSubMenu: false,
      ),
];


final intendedForItems = IntendedFor.values.map((value) =>
    CatalogItem(
      title: value.title,
      hasSubMenu: false,
      filters: ProductFilters(
        intendedFor: value,
      )
    )
).toList();


final productTypeItems = ProductType.values.map((value) =>
    CatalogItem(
        title: value.title,
        hasSubMenu: false,
        filters: ProductFilters(
          productType: value,
        )
    )
).toList();


final skinTypeItems = SkinType.values.map((value) =>
    CatalogItem(
        title: value.title,
        hasSubMenu: false,
        filters: ProductFilters(
          skinType: value,
        )
    )
).toList();


final productLineItems = ProductLine.values.map((value) =>
    CatalogItem(
        title: value.title,
        hasSubMenu: false,
        filters: ProductFilters(
          productLine: value,
        )
    )
).toList();