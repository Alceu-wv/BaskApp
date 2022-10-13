import 'package:bask_app/src/components/my_form_field.dart';
import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/my_botton_bar.dart';

class MeusTimesView extends StatelessWidget {
  static const routeName = '/meus_times';
  final String controllerField = "Teste";

  Widget text_data() {
    return Text(
      "data : some content",
      style: TextStyle(fontSize: 20),
    );
  }

  Widget content_info_card() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              text_data(),
              text_data(),
              text_data(),
            ],
          ),
        ),
        Image.asset(width: 60, height: 60, 'assets/icons/chart-bar-fill.png')
      ],
    );
  }

  Widget content_layer_card() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            color: Color.fromARGB(142, 2, 67, 99),
            width: 270,
            height: 38,
            child: const Text(
              "Próximo Jogo",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Container(
            color: Color.fromARGB(144, 124, 124, 138),
            width: 270,
            height: 130,
            child: content_info_card(),
          ),
        ],
      ),
    );
  }

  Widget background_layer_card() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: const Color(0xff024363),
              width: 311,
              height: 50,
              child: const Text(
                "Nome do time",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              color: Color(0xffF9AD69),
              width: 311,
              height: 200,
              child: content_layer_card(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaskAppBar("Meus times"),
      body: Center(
        child: Column(children: [
          background_layer_card(),
          background_layer_card(),
        ]),
      ),
      bottomNavigationBar: BaskBottonBar(),
    );
  }
}
