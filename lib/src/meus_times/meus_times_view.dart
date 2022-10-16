import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_app_bar.dart';
import '../repositories/team_repository.dart';

class MeusTimesView extends StatefulWidget {
  static const routeName = '/meus_times';

  @override
  State<MeusTimesView> createState() => _MeusTimesViewState();
}

class _MeusTimesViewState extends State<MeusTimesView> {
  final String controllerField = "Teste";

  late TeamRepository teams = Provider.of<TeamRepository>(context);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (mounted) {
      teams.fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    teams = Provider.of<TeamRepository>(context);

    return Scaffold(
      appBar: BaskAppBar("Meus times"),
      body: Center(
        child: ListView.builder(
          itemCount: teams.count,
          itemBuilder: (BuildContext context, int index) {
            var team = teams.items[index];
            return background_layer_card(team);
          },
        ),
      ),
    );
  }

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

  Widget background_layer_card(team) {
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
              child: Text(
                team.name,
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
}
