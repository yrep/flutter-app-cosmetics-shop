import 'package:first_test/main.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final bool isCutOut;

  const ImageContainer({required this.imagePath, required this.isCutOut});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.customColor.productBgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: isCutOut ? EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0) : EdgeInsets.zero,
          child: Container(
            child: Stack(
              children: [
                if (isCutOut)
                  Transform.translate(
                    offset: Offset(6, 6),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withValues(alpha: 0.3),
                        BlendMode.srcIn,
                      ),
                      child: ClipRRect(
                        child: ImageFiltered(
                          imageFilter: ui.ImageFilter.blur(
                              sigmaX: 3, sigmaY: 3),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      fit: isCutOut ? BoxFit.contain : BoxFit.fitWidth,
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}































/*
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ImageContainer extends StatelessWidget {
  final String imagePath;

  ImageContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent, //Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Container(
          //clipBehavior: Clip.hardEdge,
          child: Stack(
              children: [
                Transform.translate(
                  offset: Offset(6, 6),
                  child: ClipRRect(

                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Opacity(
                        opacity: 1.0,
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withValues(alpha: 1.0),
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


                Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ],
          ),
        ),
    ),
    );
  }
}

*/













/*
import 'package:flutter/material.dart';
import 'dart:ui' as ui;  // Import for ImageFilter.blur

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final bool shadow;

  // Constructor with default values for width and height
  ImageContainer({
    required this.imagePath,
    this.width = double.infinity, // Default to full width
    this.height = double.infinity, // Default to full height
    this.shadow = true, // Default no shadow
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4), // Set background color
        borderRadius: BorderRadius.circular(
            12), // Adjust the radius to round the corners
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}


 */