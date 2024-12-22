import 'models/enums.dart';
import 'models/filters.dart';
import 'models/product.dart';

class ProductFilterService {
  static List<Product> filterProducts(
      List<Product> products, ProductFilters filters) {
    List<Product> filteredProducts = products;

    if (filters.sorting != null) {
      switch (filters.sorting) {
        case Sorting.popularity:
          filteredProducts.sort((a, b) => b.popularity.compareTo(a.popularity));
          break;
        case Sorting.newest:
          filteredProducts.sort((a, b) => a.id.compareTo(b.id));
          break;
        case Sorting.priceAsc:
          filteredProducts.sort((a, b) => a.price.compareTo(b.price));
          break;
        case Sorting.priceDesc:
          filteredProducts.sort((a, b) => b.price.compareTo(a.price));
          break;
        default:
          break;
      }
    }

    return filteredProducts.where((product) {
      if (filters.sale != null) {
        if (filters.sale == true && product.priceSale! > 0) {
          return true;
        } else {
          return false;
        }
      }

      if (filters.id != null && product.id != filters.id) {
        return false;
      }

      if (filters.intendedFor != null &&
          product.intendedFor != filters.intendedFor) {
        return false;
      }

      if (filters.skinType != null &&
          product.skinType != filters.skinType &&
          filters.skinType != SkinType.anyType) {
        return false;
      }

      if (filters.productType != null &&
          product.productType != filters.productType &&
          filters.productType != ProductType.all) {
        return false;
      }

      if (filters.skinProblem != null &&
          product.skinProblem != filters.skinProblem &&
          filters.skinProblem != SkinProblem.notSelected) {
        return false;
      }

      if (filters.productLine != null &&
          product.productLine != filters.productLine &&
          filters.productLine != ProductLine.all) {
        return false;
      }

      if (filters.effect != null &&
          product.effect != filters.effect &&
          filters.effect != Effect.notSelected) {
        return false;
      }

      return true;
    }).toList();
  }
}