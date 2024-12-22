import 'package:first_test/main.dart';
import 'package:first_test/widgets/shared/svg_icon.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'image_container.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final bool _isSale = product.priceSale! > 0;

    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double cardHeight = constraints.maxHeight;
          double imageHeight = cardHeight * 0.67;
          return Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: imageHeight,
                  child: ImageContainer(
                      imagePath: "assets/images/${product.preview}",
                      isCutOut: product.isCutOut),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.productType?.title ?? "",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 4),
                      Text(
                        product.title,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                      Row(children: [
                        if (_isSale)
                          Text(
                            "${product.price.floor()} ₽",
                            style: context.customTextStyle.priceTextStyle,
                          ),
                        if (_isSale)
                          SizedBox(
                            width: 8,
                          ),
                        Opacity(
                          opacity: product.priceSale! > 0 ? 0.2 : 1.0,
                          child: Text(
                            "${product.price.floor()} ₽",
                            style: _isSale
                                ? context.customTextStyle.oldPriceTextStyle
                                : context.customTextStyle.priceTextStyle,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            if (_isSale)
              Positioned(
                  right: 8,
                  top: 8,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgIcon(
                          strokeOpacity: 1.0,
                          svgName: "sale",
                        ),
                        Text(
                          product.promoText!,
                          style: TextStyle(
                            color: Color(0xFFF47DD9),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 1.16,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ]))
          ]);
        },
      ),
    );
  }
}
