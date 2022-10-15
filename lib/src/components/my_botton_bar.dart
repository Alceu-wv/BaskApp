import 'package:bask_app/src/add_time/add_time_view.dart';
import 'package:bask_app/src/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaskBottonBar extends StatefulWidget {
  final PageController controller;
  BaskBottonBar(this.controller);

  @override
  State<BaskBottonBar> createState() => _BaskBottonBarState();
}

class _BaskBottonBarState extends State<BaskBottonBar> {
  void _onItemTapped(page) {
    print("dentro do _BaskBottonBarState: $page");
    widget.controller.animateToPage(page,
        duration: const Duration(milliseconds: 400), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff024363),
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      currentIndex: widget.controller.initialPage,
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/icons/magnifying-glass.png",
            height: 50,
            width: 50,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/icons/plus-circle.png",
            height: 50,
            width: 50,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/icons/chart-bar-fill.png",
            height: 50,
            width: 50,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Image.asset(
            "assets/icons/user-circle.png",
            height: 50,
            width: 50,
          ),
        ),
      ],
      onTap: _onItemTapped,
    );
  }
}
