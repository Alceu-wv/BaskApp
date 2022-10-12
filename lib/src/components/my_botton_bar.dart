import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaskBottonBar extends StatelessWidget {
  late int _currentIndex = 0;

  void _onItemTapped(int index) {
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff024363),
      items: [
        BottomNavigationBarItem(
          label: "Buscar",
          backgroundColor: const Color(0xff024363),
          icon: Image.asset(
            "assets/icons/magnifying-glass.png",
            height: 50,
            width: 50,
          ),
        ),
        BottomNavigationBarItem(
          label: "Adicionar",
          backgroundColor: const Color(0xff024363),
          icon: Image.asset(
            "assets/icons/plus-circle.png",
            height: 50,
            width: 50,
          ),
        ),
        BottomNavigationBarItem(
          label: "Adicionar",
          backgroundColor: const Color(0xff024363),
          icon: Image.asset(
            "assets/icons/chart-bar-fill.png",
            height: 50,
            width: 50,
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: const Color(0xff024363),
          label: "Adicionar",
          icon: Image.asset(
            "assets/icons/user-circle.png",
            height: 50,
            width: 50,
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
    );
  }
}
