import 'package:first_test/models/enums.dart';
import 'package:first_test/models/filters.dart';
import 'package:first_test/widgets/shared/custom_button.dart';
import 'package:flutter/material.dart';

import '../screens/product_listing_screen.dart';

class ButtonsBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Map<String, ProductFilters> buttons = {
      "Для очищения": ProductFilters(effect: Effect.cleansing),
      "Для увлажнения": ProductFilters(effect: Effect.moisturizing),
      "Для питания": ProductFilters(effect: Effect.nourishment),
      "Для омоложения": ProductFilters(effect: Effect.antiaging),
    };

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width * 0.40,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2.8,
          ),
          itemCount: buttons.length,
          itemBuilder: (context, index) {
            final title = buttons.keys.elementAt(index);
            final filters = buttons[title];

            return CustomButtonBuilder(
              text: title,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductListingScreen(
                    categoryTitle: title,
                    productFilters: filters,
                  ),
                ),
              ),
            )
                .setWidth(80)
                .setHeight(30)
                .setTextColor(Color(0xFF080808))
                .setFont(
                  TextStyle(
                    color: Color(0xFF080808),
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    height: 2.57,
                  ),
                )
                .setOutlineColor(Colors.black.withAlpha(30))
                .setOutlineWidth(1)
                .setCornerRadius(9)
                .build()
                .buildButton();
          },
        ),
      ),
    );
  }
}