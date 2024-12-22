import 'package:flutter/material.dart';

class CustomButton {
  final Color? fillColor;
  final Color? outlineColor;
  final double outlineWidth;
  final double cornerRadius;
  final Color textColor;
  final TextStyle? font;
  final EdgeInsetsGeometry textPadding;
  final double width;
  final double height;
  final String text;
  final double elevationValue;
  final VoidCallback onPressed;

  CustomButton._({
    this.fillColor,
    this.outlineColor,
    required this.outlineWidth,
    required this.cornerRadius,
    required this.textColor,
    this.font,
    required this.textPadding,
    required this.width,
    required this.height,
    required this.text,
    required this.elevationValue,
    required this.onPressed,
  });

  Widget buildButton() {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(fillColor ?? Colors.transparent),
        side: WidgetStateProperty.all(BorderSide(
          color: outlineColor ?? Colors.transparent,
          width: outlineWidth,
        )),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        )),
        padding: WidgetStateProperty.all(textPadding),
        minimumSize: WidgetStateProperty.all(Size(width, height)),
        overlayColor: WidgetStateProperty.all(Colors.white.withValues(alpha: 0.15)),
        elevation: WidgetStatePropertyAll(elevationValue),
      ),
      child: Text(
        text,
        style: font ?? TextStyle(color: textColor, fontSize: 16),
      ),
    );
  }
}

class CustomButtonBuilder {
  Color? fillColor;
  Color? outlineColor;
  double outlineWidth = 0.0;
  double cornerRadius = 6.0;
  Color textColor = Colors.white;
  TextStyle? font;
  EdgeInsetsGeometry textPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 12);
  double width = double.infinity;
  double height = 50.0;
  String text;
  double elevationValue = 0.0;
  final VoidCallback onPressed;

  CustomButtonBuilder({
    required this.text,
    required this.onPressed,
  });

  CustomButtonBuilder setFillColor(Color color) {
    fillColor = color;
    return this;
  }

  CustomButtonBuilder setOutlineColor(Color color) {
    outlineColor = color;
    return this;
  }


  CustomButtonBuilder setOutlineWidth(double width) {
    outlineWidth = width;
    return this;
  }

  CustomButtonBuilder setCornerRadius(double radius) {
    cornerRadius = radius;
    return this;
  }

  CustomButtonBuilder setTextColor(Color color) {
    textColor = color;
    return this;
  }

  CustomButtonBuilder setFont(TextStyle style) {
    font = style;
    return this;
  }

  CustomButtonBuilder setTextPadding(EdgeInsetsGeometry padding) {
    textPadding = padding;
    return this;
  }

  CustomButtonBuilder setWidth(double width) {
    this.width = width;
    return this;
  }

  CustomButtonBuilder setHeight(double height) {
    this.height = height;
    return this;
  }

  CustomButtonBuilder setElevation(double value) {
    this.elevationValue = value;
    return this;
  }

  CustomButton build() {
    return CustomButton._(
      fillColor: fillColor,
      outlineColor: outlineColor,
      outlineWidth: outlineWidth,
      cornerRadius: cornerRadius,
      textColor: textColor,
      font: font,
      textPadding: textPadding,
      width: width,
      height: height,
      text: text,
      elevationValue: elevationValue,
      onPressed: onPressed,
    );
  }
}























/*
import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double borderRadius;

  ColorButton({
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
    this.width = 100,
    this.height = 32,
    this.borderRadius = 4,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonColor),
        foregroundColor: WidgetStateProperty.all(textColor),
        minimumSize: WidgetStateProperty.all(Size(width, height)),
        side: WidgetStateProperty.all(BorderSide(color: Colors.white, width: 1)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        )),
      ),
      child: Text(buttonText),
    );
  }
}


 */