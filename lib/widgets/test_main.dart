import 'package:first_test/widgets/shared/custom_button.dart';
import 'package:first_test/widgets/unique/test_main_scheme_item.dart';
import 'package:flutter/material.dart';

class MainPageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 250,
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Color(0xFFF3F3F3),
            image: DecorationImage(
              image: AssetImage('assets/images/test_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 26,
                  left: 22,
                ),
                child: Text(
                  'Моя схема домашнего ухода',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                width: double.infinity,
                height: 101,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 12),
                      child: TestMainSchemeItem(
                        title: "Демакияж",
                        imagePath: 'assets/images/scheme_01.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: TestMainSchemeItem(
                        title: "Очищение",
                        imagePath: 'assets/images/scheme_02.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: TestMainSchemeItem(
                        title: "Сыворотка",
                        imagePath: 'assets/images/scheme_03.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: TestMainSchemeItem(
                        title: "Дневной крем",
                        imagePath: 'assets/images/scheme_04.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22,
                      ),
                      child: Text(
                        'Ответьте на 10 вопросов,\nи мы подберем нужный уход',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 1.23,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CustomButtonBuilder(
                        text: "Пройти тест",
                        onPressed: () => {},
                      )
                          .setCornerRadius(6)
                          .setWidth(118)
                          .setHeight(40)
                          .setFillColor(Color(0xFF2B2B2B))
                          .setFont(
                            TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 1.33,
                            ),
                          )
                          .setTextPadding(EdgeInsets.all(10))
                          .build()
                          .buildButton(),
                    ),
                  ]),
            ],
          ),
        ),
      ]),
    );
  }
}