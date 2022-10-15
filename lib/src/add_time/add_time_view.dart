import 'package:bask_app/src/add_time/add_time_controller.dart';
import 'package:bask_app/src/components/my_big_ok_button.dart';
import 'package:bask_app/src/components/my_form_field.dart';
import 'package:flutter/material.dart';

import '../components/my_app_bar.dart';
import '../components/my_botton_bar.dart';

class AddTimeView extends StatefulWidget {
  static const routeName = '/add_time';

  @override
  State<AddTimeView> createState() => _AddTimeViewState();
}

class _AddTimeViewState extends State<AddTimeView> {
  final String controllerField = "Teste";
  final controller = TimeController();
  get name => controller.name;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaskAppBar("Adicionar Partida"),
      body: Padding(
        padding: const EdgeInsets.only(right: 45.0, left: 45.0, top: 45.0),
        child: Column(
          children: [
            BaskFormField(
                label: "Nome", controllerField: controller.updateTeamName),
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
                      label: "Brasão",
                      controllerField: controller.updateTeamBadge),
                ),
                Image.asset(
                    height: 130, width: 100, "assets/icons/bucks-logo.png")
              ],
            ),
            SizedBox(
              height: 50,
              child: Text("Criar $name"),
            ),
            BaskBigOkButton()
          ],
        ),
      ),
    );
  }
}
