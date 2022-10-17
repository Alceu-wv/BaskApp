// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BaskBigOkButton extends StatefulWidget {
  Function func;

  BaskBigOkButton(this.func);

  @override
  State<BaskBigOkButton> createState() => _BaskBigOkButtonState();
}

class _BaskBigOkButtonState extends State<BaskBigOkButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => widget.func(),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffF9AD69),
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Icon(Icons.done),
    );
  }
}
