import 'package:flutter/material.dart';

class BaskFormField extends StatelessWidget {
  final String label;
  late final String controllerField;

  BaskFormField({required this.label, required this.controllerField});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true, //<-- SEE HERE
          fillColor: Color(0xffE3E3E3),
          labelText: label,
          constraints: BoxConstraints(maxHeight: 40)),
      onSaved: (value) => controllerField = value!,
    );
  }
}
