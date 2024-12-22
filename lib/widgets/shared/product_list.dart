import 'package:first_test/filter_service.dart';
import 'package:first_test/widgets/shared/product_card.dart';
import 'package:flutter/material.dart';
import '../../models/filters.dart';
import '../../models/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = sampleProducts;
  final int limit;
  final ProductFilters? productFilters;

  ProductList({
    super.key,
    required this.limit,
    this.productFilters,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = ProductFilterService.filterProducts(
      products,
      productFilters ?? ProductFilters(),
    );

    if (filteredProducts.isNotEmpty && filteredProducts.length > 3) {
      filteredProducts = filteredProducts.sublist(0, limit);
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 300,
        child: Row(
          children: filteredProducts.map((product) {
            return Container(
              width: 174,
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
              child: ProductCard(product: product),
            );
          }).toList(),
        ),
      ),
    );
  }
}
