import 'package:flutter/material.dart';

import 'svg_icon.dart';

class BottomToolbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  BottomToolbar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onTap,
      iconSize: 24,
      selectedItemColor: Colors.black.withValues(alpha: 1),
      unselectedItemColor: Colors.black.withValues(alpha: 0.5),
      selectedFontSize: 10,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: SvgIcon(svgName: "home" , strokeOpacity: 0.5),
          activeIcon: SvgIcon(svgName: "home" , strokeOpacity: 1),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: SvgIcon(svgName: "magGlass" , strokeOpacity: 0.5),
          activeIcon: SvgIcon(svgName: "magGlass" , strokeOpacity: 1),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: SvgIcon(svgName: "cart" , strokeOpacity: 0.5),
          activeIcon: SvgIcon(svgName: "cart" , strokeOpacity: 1),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: SvgIcon(svgName: "profile" , strokeOpacity: 0.5),
          activeIcon: SvgIcon(svgName: "profile" , strokeOpacity: 1),
          label: 'Профиль',
        ),
      ],
    );
  }
}
