import 'package:bask_app/src/components/my_app_bar.dart';
import 'package:bask_app/src/components/my_botton_bar.dart';
import 'package:flutter/material.dart';

class AddPartidaView extends StatelessWidget {
  static const routeName = '/add_partida';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaskAppBar("Adicionar Partida"),
      bottomNavigationBar: BaskBottonBar(),
    );
  }
}
