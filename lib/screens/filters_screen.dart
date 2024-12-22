import 'package:first_test/models/filters.dart';
import 'package:flutter/material.dart';
import '../widgets/shared/custom_button.dart';
import '../widgets/unique/filters_item.dart';
import 'product_listing_screen.dart';
import '../models/enums.dart';

class FiltersScreen extends StatefulWidget {

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  Sorting _selectedSorting = Sorting.popularity;
  SkinType _selectedSkinType = SkinType.anyType;
  ProductType _selectedProductType = ProductType.all;
  SkinProblem _selectedSkinProblem = SkinProblem.notSelected;
  Effect _selectedEffect = Effect.moisturizing;
  ProductLine _selectedProductLine = ProductLine.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Фильтры'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Column(
        children: [

          SizedBox(height: 32),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FilterItem(
                      label: "Сортировка",
                      initialValue: Sorting.popularity.title,
                      values:
                      Sorting.values.map((type) => type.title).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedSorting = Sorting.values
                              .firstWhere((type) => type.title == value);
                        });
                      },
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    FilterItem(
                      label: "Тип кожи",
                      initialValue: SkinType.anyType.title,
                      values:
                          SkinType.values.map((type) => type.title).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedSkinType = SkinType.values
                              .firstWhere((type) => type.title == value);
                        });
                      },
                    ),
                    FilterItem(
                      label: "Тип средства",
                      initialValue: ProductType.all.title,
                      values:
                      ProductType.values.map((type) => type.title).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedProductType = ProductType.values
                              .firstWhere((type) => type.title == value);
                        });
                      },
                    ),
                    FilterItem(
                      label: "Проблема кожи",
                      initialValue: SkinProblem.notSelected.title,
                      values:
                      SkinProblem.values.map((type) => type.title).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedSkinProblem = SkinProblem.values
                              .firstWhere((type) => type.title == value);
                        });
                      },
                    ),
                    FilterItem(
                      label: "Эффект средства",
                      initialValue: Effect.notSelected.title,
                      values:
                      Effect.values.map((type) => type.title).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedEffect = Effect.values
                              .firstWhere((type) => type.title == value);
                        });
                      },
                    ),
                    FilterItem(
                      label: "Линия косметики",
                      initialValue: ProductLine.all.title,
                      values:
                      ProductLine.values.map((type) => type.title).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedProductLine = ProductLine.values
                              .firstWhere((type) => type.title == value);
                        });
                      },
                    ),
                  ],
                ),
              )
          ),
          Spacer(),
            Center(
              child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: CustomButtonBuilder(
                      text: "Применить фильтры",
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductListingScreen(
                            categoryTitle: 'Отобранные средства',
                            productFilters: ProductFilters(
                              sorting: _selectedSorting,
                              skinType: _selectedSkinType,
                              productType: _selectedProductType,
                              skinProblem: _selectedSkinProblem,
                              effect: _selectedEffect,
                              productLine: _selectedProductLine,
                            ),
                          ),
                        ),
                      ),
                    )
                        .setCornerRadius(9)
                        .setWidth(double.infinity)
                        .setHeight(56)
                        .setFillColor(Color(0xFF2B2B2B))
                        .setFont(
                          TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            height: 1.16,
                            letterSpacing: 0.16,
                          ),
                        )
                        .setTextPadding(EdgeInsets.all(10))
                        .build()
                        .buildButton(),
                  )
              ),
            ),
          ],
      )
    );
  }
}
