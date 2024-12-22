import 'package:first_test/main.dart';
import 'package:first_test/models/enums.dart';
import 'package:first_test/models/filters.dart';
import 'package:flutter/material.dart';
import '../widgets/buttons_block.dart';
import '../widgets/hero_slider.dart';
import '../widgets/sections_list.dart';
import '../widgets/shared/bottom_toolbar.dart';
import '../widgets/shared/product_list.dart';
import '../widgets/shared/product_list_title.dart';
import '../widgets/test_main.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              // Hero Section
              HeroSlider(),
              SectionList(),
              SizedBox(
                height: 16,
              ),
              ProductListTitle(
                title: "Новинки",
                gradient: context.customGradient.productListNewGradient!,
              ),
              SizedBox(
                height: 12,
              ),
              ProductList(
                limit: 3,
                productFilters: ProductFilters(
                  sorting: Sorting.newest,
                ),
              ),
              MainPageTest(),
              SizedBox(
                height: 16,
              ),
              ProductListTitle(
                title: "Акции",
                gradient: context.customGradient.productListSaleGradient!,
              ),
              SizedBox(
                height: 16,
              ),
              ProductList(
                limit: 3,
                productFilters: ProductFilters(
                  sale: true,
                ),
              ),
              ButtonsBlock(),
              SizedBox(
                height: 16,
              ),
              ProductListTitle(
                title: "Хиты",
                gradient: context.customGradient.productListHitsGradient!,
              ),
              SizedBox(
                height: 16,
              ),
              ProductList(
                limit: 3,
                productFilters: ProductFilters(
                  sorting: Sorting.popularity,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ]
        ),
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