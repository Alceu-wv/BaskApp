import 'package:bask_app/src/components/my_big_ok_button.dart';
import 'package:bask_app/src/components/my_form_field.dart';
import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/my_botton_bar.dart';

class AddTimeView extends StatelessWidget {
  static const routeName = '/add_time';
  final String controllerField = "Teste";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaskAppBar("Adicionar Partida"),
      body: Padding(
        padding: const EdgeInsets.only(right: 45.0, left: 45.0, top: 45.0),
        child: Column(
          children: [
            BaskFormField(label: "Nome", controllerField: controllerField),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    // color: Colors.amber,
                    alignment: Alignment.center,
                    width: 150,
                    child: BaskFormField(
                        label: "Brasão", controllerField: controllerField)),
                Image.asset(
                    height: 130, width: 100, "assets/icons/bucks-logo.png")
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            BaskBigOkButton()
          ],
        ),
      ),
      bottomNavigationBar: BaskBottonBar(),
    );
  }
}
