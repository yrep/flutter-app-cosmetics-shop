import 'package:first_test/models/filters.dart';
import 'package:first_test/widgets/shared/svg_icon.dart';
import 'package:flutter/material.dart';
import '../../models/catalog_items.dart';
import '../../screens/product_listing_screen.dart';
import '../../screens/submenu_screen.dart';


class CatalogLink extends StatelessWidget {
  final CatalogItem item;

  CatalogLink({
    required this.item,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(item.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 1.16,
              letterSpacing: 0.16,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          if (item.hasIcon) SvgIcon(svgName: "sale", strokeOpacity: 1.0, fillColor: "#F47DDA"),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => item.hasSubMenu ?
            SubmenuScreen(categoryTitle: item.title) :
            ProductListingScreen(
                categoryTitle: item.title,
                productFilters: item.filters ?? ProductFilters(),
            ),
          ),
        );
      },
    );
  }
}