import 'package:flutter/material.dart';
import '../widgets/shared/bottom_toolbar.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Корзина")),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(36),
            child: Text(
                "Корзина не реализована по причине отсутствия данного экрана в макете")
          ),
          ),
      bottomNavigationBar: BottomToolbar(
        selectedIndex: 2,
        onTap: (index) {
          if (index == 0) Navigator.pop(context);
          if (index == 1) Navigator.pushNamed(context, '/catalog');
          if (index == 3) Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }
}
