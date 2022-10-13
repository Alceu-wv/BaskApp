import 'package:bask_app/src/components/my_app_bar.dart';
import 'package:bask_app/src/components/my_big_ok_button.dart';
import 'package:bask_app/src/components/my_botton_bar.dart';
import 'package:bask_app/src/components/my_form_field.dart';
import 'package:flutter/material.dart';

class AddPartidaView extends StatelessWidget {
  static const routeName = '/add_partida';
  final String controllerField = "Teste";

  Widget space_time_form(context) {
    return Container(
      child: Column(
        children: [
          BaskFormField(
            controllerField: controllerField,
            label: "Local",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    BaskFormField(
                        label: "Data", controllerField: controllerField),
                    const SizedBox(
                      height: 20,
                    ),
                    BaskFormField(
                        label: "Horário", controllerField: controllerField),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                    width: 80, height: 80, "assets/icons/basketball-field.png"),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget other_infos_form() {
    return Column(
      children: [
        BaskFormField(
            label: "Máximo de jogadores", controllerField: controllerField),
        const SizedBox(
          height: 20,
        ),
        BaskFormField(
            label: "Valor por cabeça", controllerField: controllerField),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaskAppBar("Adicionar Partida"),
      body: Padding(
        padding: const EdgeInsets.only(right: 45.0, left: 45.0, top: 45.0),
        child: Column(
          children: [
            space_time_form(context),
            const SizedBox(
              height: 50,
            ),
            other_infos_form(),
            const SizedBox(
              height: 50,
            ),
            BaskBigOkButton(),
          ],
        ),
      ),
      bottomNavigationBar: BaskBottonBar(),
    );
  }
}
