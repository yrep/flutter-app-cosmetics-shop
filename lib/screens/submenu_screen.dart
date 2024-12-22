// lib/screens/submenu_screen.dart

import 'package:first_test/models/filters.dart';
import 'package:flutter/material.dart';
import '../models/catalog_items.dart';
import '../widgets/shared/bottom_toolbar.dart'; // For reusable bottom navigation bar
import 'product_listing_screen.dart';  // Placeholder for submenu data (can be dynamic)

class SubmenuScreen extends StatelessWidget {
  final String categoryTitle;
  final List<CatalogItem> parentItems = catalogItems;

  SubmenuScreen({
    Key? key,
    required this.categoryTitle
  }) : super(key: key);

  List<CatalogItem> getSubmenus() {
    if (categoryTitle.isNotEmpty && parentItems.isNotEmpty) {
      for (CatalogItem parentItem in parentItems) {
        if (parentItem.title == categoryTitle) {
          return parentItem.subMenuItems ?? [];
        }
      }
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {

    final submenus = getSubmenus();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Navigate back to the previous screen
          },
        ),
        title: Text(categoryTitle),  // Display the category title
      ),
      body: Column(
        children: [
          // List of submenus for the category
          Expanded(
            child: ListView.builder(
              itemCount: submenus.length,
              itemBuilder: (context, index) {
                final submenu = submenus[index];
                return ListTile(
                  title: Text(submenu.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      height: 1.03,
                      letterSpacing: 0.18,
                    ),
                  ),
                  onTap: () {
                    // Navigate to product listing screen with the selected submenu
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductListingScreen(
                          categoryTitle: submenu.title,
                          productFilters: submenu.filters ?? ProductFilters(),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomToolbar(
        selectedIndex: 1,  // Adjust selectedIndex based on the current screen
        onTap: (index) {
          // Handle navigation based on selected bottom navigation index
          if (index == 0) Navigator.pop(context);
          if (index == 2) Navigator.pushNamed(context, '/cart');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }
}
