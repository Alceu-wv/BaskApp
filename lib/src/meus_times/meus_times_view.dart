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
            var team = teams.teams[index];
            var matchs = teams.matchs[index];
            return background_layer_card(team, matchs);
          },
        ),
      ),
    );
  }

  Widget text_data(item, value) {
    return Text(
      "$item : $value",
      style: TextStyle(fontSize: 20),
    );
  }

  Widget content_info_card(matchs) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              text_data("local", matchs.elementAt(0).place),
              text_data("Horário", matchs.elementAt(0).time),
              text_data("Confirmados", matchs.elementAt(0).maxPlayers),
            ],
          ),
        ),
        Image.asset(width: 60, height: 60, 'assets/icons/chart-bar-fill.png')
      ],
    );
  }

  Widget content_layer_card(matchs) {
    return ListView.builder(
        itemCount: matchs.isEmpty ? 0 : 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                color: Color.fromARGB(142, 2, 67, 99),
                width: 270,
                height: 38,
                child: Text(
                  matchs.elementAt(0).date,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Container(
                color: Color.fromARGB(144, 124, 124, 138),
                width: 270,
                height: 130,
                child: content_info_card(matchs),
              ),
            ],
          );
        });
  }

  Widget background_layer_card(team, matchs) {
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
              child: content_layer_card(matchs),
            ),
          ],
        ),
      ),
    );
  }
}
