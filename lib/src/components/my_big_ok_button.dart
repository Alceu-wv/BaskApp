import 'package:flutter/material.dart';

class BaskBigOkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffF9AD69),
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Icon(Icons.done),
    );
  }
}
