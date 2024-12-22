import 'package:first_test/main.dart';
import 'package:flutter/material.dart';
import '../../models/sections.dart';
import '../../screens/product_listing_screen.dart';
import 'image_container_small.dart';

class SectionCard extends StatelessWidget {
  final SectionCardData sectionData;

  SectionCard({
    required this.sectionData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListingScreen(
              categoryTitle: sectionData.sectionTitle,
              productFilters: sectionData.filters,
            ),
          ),
        );
      },
      child: Container(
        width: 72,
        height: 95,
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageContainerSmall(data: sectionData),
            const SizedBox(height: 6),
            SizedBox(
              child: Text(
                sectionData.sectionTitle,
                textAlign: TextAlign.center,
                style: context.customTextStyle.sectionTitleStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

