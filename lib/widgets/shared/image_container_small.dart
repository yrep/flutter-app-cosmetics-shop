import 'package:flutter/material.dart';
import '../../models/sections.dart';

class ImageContainerSmall extends StatelessWidget {
  final SectionCardData data;

  const ImageContainerSmall({
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: data.containerBackgroundColor ?? Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Stack(
          children: [
            if (!data.isCutOut) Align(
              alignment: Alignment.center,
              child: Image.asset(
                data.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            if (data.isCutOut) Positioned(
              left: data.position1!.left,
              top: data.position1!.top,
              // left: 0,
              // top: 10,
              child: Transform(
                alignment: Alignment.topLeft,
                transform: Matrix4.identity()
                  ..scale(data.position1!.scale)
                  // ..scale(0.08)
                  ..rotateZ(data.position1!.rotation),
                child: Image.asset(
                  data.imagePath,
                  width: 72,
                  height: 72,
                ),
              ),
            ),
            if (data.imagePathAdditional != null || data.isDuplicated) Positioned(
              left: data.position2!.left,
              top: data.position2!.top,
              // left: -56,
              // top: -84,
              child: Transform(
                alignment: Alignment.topLeft,
                transform: Matrix4.identity()
                  ..scale(data.position2!.scale)
                  // ..scale(1.4)
                  ..rotateZ(data.position2!.rotation),
                child: Image.asset(
                  data.isDuplicated ? data.imagePath : data.imagePathAdditional ?? data.imagePath,
                  width: 72,
                  height: 72,
                ),
              ),
            ),
          ]
      ),
    );
  }
}