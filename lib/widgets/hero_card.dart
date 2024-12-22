import 'package:first_test/models/filters.dart';
import 'package:flutter/material.dart';
import '../screens/product_listing_screen.dart';
import 'hero_content.dart';

class HeroCard extends StatelessWidget {
  final int index;
  final String heroTag;
  final String title;
  final String description;
  final String imageUrl;
  final String buttonText;
  final ProductFilters? filters;

  const HeroCard({
    Key? key,
    required this.index,
    required this.heroTag,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.buttonText,
    required this.filters,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.96,
      child: Hero(
        tag: heroTag,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withValues(alpha: 0.0),
                    Colors.black.withValues(alpha: 0.6),
                  ],
                  stops: [0.0, 0.8], // Gradient control
                ),
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.46,
              widthFactor: 1.0,
              child: Container(
                color: Colors.transparent,
                child: Center(
                  child: ContentContainer(
                    title: title,
                    description: description,
                    onButtonPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductListingScreen(
                          categoryTitle: title,
                          productFilters: filters,
                        ),
                      ),
                    ), // Navigator.pushNamed(context, buttonNavLink),
                    buttonText: buttonText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}