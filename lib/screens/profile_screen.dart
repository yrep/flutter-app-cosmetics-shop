import 'package:flutter/material.dart';
import '../widgets/shared/bottom_toolbar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Профиль")),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(36),
            child: Text(
                "Профиль пользователя не реализован по причине отсутствия данного экрана в макете")),
      ),
      bottomNavigationBar: BottomToolbar(
        selectedIndex: 3,
        onTap: (index) {
          if (index == 0) Navigator.pushNamed(context, '/main');
          if (index == 1) Navigator.pushNamed(context, '/catalog');
          if (index == 2) Navigator.pushNamed(context, '/cart');
        },
      ),
    );
  }
}
