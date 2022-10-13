import 'package:flutter/material.dart';

class BaskFormField extends StatefulWidget {
  final String label;
  late final controllerField;

  BaskFormField({required this.label, required this.controllerField});

  @override
  State<BaskFormField> createState() => _BaskFormFieldState();
}

class _BaskFormFieldState extends State<BaskFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true, //<-- SEE HERE
          fillColor: const Color(0xffE3E3E3),
          labelText: widget.label,
          constraints: BoxConstraints(maxHeight: 40)),
      onChanged: (value) => widget.controllerField(value),
    );
  }
}
