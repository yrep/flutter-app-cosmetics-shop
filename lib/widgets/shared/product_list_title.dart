import 'package:first_test/main.dart';
import 'package:flutter/material.dart';

class ProductListTitle extends StatelessWidget {
  final String title;
  final LinearGradient gradient;

  ProductListTitle({
    required this.title,
    required this.gradient,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Align(
        alignment: Alignment.topLeft,
        child:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,
                style: context.customTextStyle.productListTitleStyle,),
              Container(
                alignment: Alignment.topLeft,
                width: 118,
                height: 4,
                decoration: BoxDecoration(
                  gradient: gradient,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}