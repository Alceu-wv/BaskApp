import 'package:flutter/material.dart';

class BaskAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;

  BaskAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff024363),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/icons_basket_ball.png",
            height: 50,
            width: 50,
          ),
          Text(title),
          const SizedBox(
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
