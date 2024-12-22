import 'package:first_test/widgets/shared/section_card.dart';
import 'package:flutter/material.dart';
import 'package:first_test/models/sections.dart';

class SectionList extends StatelessWidget {
  final List<SectionCardData> sections = testSectionCards;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: sections.map((section) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
            child: SectionCard(sectionData: section),
          );
        }).toList(),
      ),
    );
  }
}
