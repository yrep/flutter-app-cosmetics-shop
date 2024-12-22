import 'package:first_test/models/catalog_items.dart';
import 'package:flutter/material.dart';
import '../widgets/shared/bottom_toolbar.dart';
import '../widgets/shared/catalog_link.dart';
import '../widgets/shared/svg_icon.dart';

class CatalogScreen extends StatelessWidget {

  final List<CatalogItem> items = catalogItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                  prefixIcon: UnconstrainedBox(
                        child: SvgIcon(svgName: "magGlass" , strokeOpacity: 0.5),
                ),
                  border: UnderlineInputBorder(),
              ),
            ),
            ),
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: items.map((item) {
                    return CatalogLink(
                      item: item,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomToolbar(
        selectedIndex: 1,
        onTap: (index) {
          if (index == 0) Navigator.pushNamed(context, '/main');
          if (index == 2) Navigator.pushNamed(context, '/cart');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }
}