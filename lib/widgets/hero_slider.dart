import 'package:first_test/widgets/hero_dots.dart';
import 'package:flutter/material.dart';
import '../../../models/hero.dart';
import 'hero_card.dart';

class HeroSlider extends StatefulWidget {
  const HeroSlider({Key? key}) : super(key: key);

  @override
  _HeroSliderState createState() => _HeroSliderState();
}

class _HeroSliderState extends State<HeroSlider> {
  int currentHeroIndex = 0;
  final int heroCount = 3;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentHeroIndex);
  }

  void _onPageChanged(int index) {
    if (index < 0 || index >= heroCount) {
      return;
    }
    setState(() {
      currentHeroIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
          children: [
            Container(
            height: MediaQuery.of(context).size.height * 0.44,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: heroCount,
              itemBuilder: (context, index) {
                final heroCardData = testHeroCards[index];
                final heroTag = "tag$index";
                return HeroCard(index: index,
                    heroTag: heroTag,
                    title: heroCardData.title,
                    description: heroCardData.description,
                    imageUrl: heroCardData.imageUrl,
                    buttonText: heroCardData.buttonText,
                    filters: heroCardData.filters,
                );
              },
              physics: ClampingScrollPhysics(),
            ),
    ),
    Positioned(
      top: 50,
      left: 18,
      child: DotsIndicator(currentIndex: currentHeroIndex, totalSlides: heroCount,),
    ),
          ]
      );
  }
}
