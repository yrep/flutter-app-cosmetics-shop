import 'package:flutter/material.dart';
import '../filter_service.dart';
import '../models/filters.dart';
import '../models/product.dart';
import '../widgets/shared/bottom_toolbar.dart';
import 'filters_screen.dart';
import '../widgets/shared/product_card.dart';


class ProductListingScreen extends StatelessWidget {
  final String categoryTitle;
  final ProductFilters? productFilters;
  final List<Product> products = sampleProducts;

  ProductListingScreen({
    required this.categoryTitle,
    this.productFilters,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = ProductFilterService.filterProducts(
        products,
        productFilters ?? ProductFilters());

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Displaying ${filteredProducts.length} products',
                    style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FiltersScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                childAspectRatio: 0.58,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return ProductCard(product: product);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomToolbar(
        selectedIndex: 0,
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/catalog');
          if (index == 2) Navigator.pushNamed(context, '/cart');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }
}











 /*

  // Filter products based on the filters provided
  List<Product> _filterProducts(List<Product> products, ProductFilters filters) {
    // Filter products based on selected filters (already in place)
    List<Product> filteredProducts = products.where((product) {
      bool matches = true;

      if (filters.intendedFor != null) {
        matches = matches && product.intendedFor == filters.intendedFor;
      }
      if (filters.skinType != null) {
        matches = matches && product.skinType == filters.skinType;
      }
      if (filters.productType != null) {
        matches = matches && product.productType == filters.productType;
      }
      if (filters.skinProblem != null) {
        matches = matches && product.skinProblem == filters.skinProblem;
      }
      if (filters.productLine != null) {
        matches = matches && product.productLine == filters.productLine;
      }
      if (filters.effect != null) {
        matches = matches && product.effect == filters.effect;
      }

      return matches;
    }).toList();

    // Apply sorting if sorting filter is provided
    if (filters.sorting != null) {
      filteredProducts = _applySorting(filteredProducts, filters.sorting!);
    }

    return filteredProducts;
  }

  List<Product> _applySorting(List<Product> products, Sorting sorting) {
    switch (sorting) {
      case Sorting.popularity:
      // Sort by popularity (highest to lowest)
        products.sort((a, b) => b.popularity.compareTo(a.popularity));
        break;
      case Sorting.newest:
      // Sort by newest (you can adjust based on your product's date or ID)
      // Assuming products have an ID that can represent their creation order
        products.sort((a, b) => b.id.compareTo(a.id));
        break;
      case Sorting.priceAsc:
        products.sort((a, b) => a.price.compareTo(b.price));
        break;
      case Sorting.priceDesc:
        products.sort((a, b) => b.price.compareTo(a.price));
        break;
      default:
        break;
    }
    return products;
  }





}




























import 'package:flutter/material.dart';
import '../models/filters.dart';
import '../models/product.dart';
import '../widgets/shared/bottom_toolbar.dart';
import 'filters_screen.dart';
import '../widgets/shared/product_card.dart';  // Import the ProductCard widget

class ProductListingScreen extends StatelessWidget {
  final String categoryTitle;
  final ProductFilters? productFilters;
  final List<Product> products = sampleProducts;

  ProductListingScreen({
    required this.categoryTitle,
    this.productFilters,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
      ),
      body: Column(
        children: [
          // Title with product count and filters
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Displaying ${products.length} products', style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FiltersScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          // Quick filter buttons: Cleaning, Moisturizing, Regeneration
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                _quickFilterButton('Cleaning'),
                _quickFilterButton('Moisturizing'),
                _quickFilterButton('Regeneration'),
              ],
            ),
          ),
          // Product cards (list of products)
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                childAspectRatio: 0.58,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(  // Use the new ProductCard widget
                  product: product,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomToolbar(
        selectedIndex: 0, // Change based on the screen selection
        onTap: (index) {
          if (index == 1) Navigator.pushNamed(context, '/catalog');
          if (index == 2) Navigator.pushNamed(context, '/cart');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }

  // Helper method to create the quick filter buttons
  Widget _quickFilterButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }
}

*/