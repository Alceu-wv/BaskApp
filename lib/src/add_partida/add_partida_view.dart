import 'package:bask_app/src/add_partida/add_partida_controller.dart';
import 'package:bask_app/src/components/my_app_bar.dart';
import 'package:bask_app/src/components/my_big_ok_button.dart';
import 'package:bask_app/src/components/my_botton_bar.dart';
import 'package:bask_app/src/components/my_form_field.dart';
import 'package:flutter/material.dart';

class AddPartidaView extends StatefulWidget {
  static const routeName = '/add_partida';

  @override
  State<AddPartidaView> createState() => _AddPartidaViewState();
}

class _AddPartidaViewState extends State<AddPartidaView> {
  final controller = AddPartidaController();

  void saveMatch() {}

  @override
  void initState() {
    controller.date$.addListener(() {
      setState(() {});
    });
    controller.place$.addListener(() {
      setState(() {});
    });
    controller.maxPlayers$.addListener(() {
      setState(() {});
    });
    controller.time$.addListener(() {
      setState(() {});
    });
    controller.price$.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  Widget space_time_form(context) {
    return Container(
      child: Column(
        children: [
          BaskFormField(
            controllerField: controller.setPlace,
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
                        label: "Data", controllerField: controller.setDate),
                    const SizedBox(
                      height: 20,
                    ),
                    BaskFormField(
                        label: "Horário", controllerField: controller.setTime),
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
            label: "Máximo de jogadores",
            controllerField: controller.setMaxPlayers),
        const SizedBox(
          height: 20,
        ),
        BaskFormField(
            label: "Valor por cabeça", controllerField: controller.setPrice),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
              BaskBigOkButton(saveMatch),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BaskBottonBar(PageController()),
    );
  }
}
