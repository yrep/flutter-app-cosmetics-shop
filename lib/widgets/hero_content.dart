import 'package:first_test/main.dart';
import 'package:first_test/widgets/shared/custom_button.dart';
import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onButtonPressed;
  final double buttonWidth;
  final double buttonHeight;
  final double borderRadius;
  final String buttonText;

  ContentContainer({
    required this.title,
    required this.description,
    required this.onButtonPressed,
    this.buttonWidth = 120,
    this.buttonHeight = 36,
    this.borderRadius = 6,
    required this.buttonText,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 166,
      color: Colors.transparent,
      padding: EdgeInsets.only(
        top: 51,
        right: 12,
        bottom: 29,
        left: 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 12),
              child: Text(
                title,
                style: context.customTextStyle.heroTitleStyle,
              ),
            ),
          ]),
          SizedBox(height: 16),
          Row(
            children: [
              Flexible(
                flex: 62,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Text(description, style: context.customTextStyle.heroTextStyle)
                ),
              ),
              SizedBox(
                  width: 8
              ),
              Flexible(
                flex: 38,
                child: Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  child: CustomButtonBuilder(
                    text: buttonText,
                    onPressed: onButtonPressed,
                  )
                      .setOutlineColor(Colors.white)
                      .setOutlineWidth(1.0)
                      .setCornerRadius(3)
                      .setWidth(120)
                      .setHeight(36)
                      .setFont(context.customTextStyle.heroButtonTextStyle!)
                      .setTextPadding(EdgeInsets.all(10))
                      .build()
                      .buildButton(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
