import 'package:bask_app/src/add_team/add_team_controller.dart';
import 'package:bask_app/src/components/my_big_ok_button.dart';
import 'package:bask_app/src/components/my_form_field.dart';
import 'package:bask_app/src/models/time.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_app_bar.dart';
import '../components/my_botton_bar.dart';
import '../repositories/team_repository.dart';

class AddTeamView extends StatefulWidget {
  static const routeName = '/add_time';

  @override
  State<AddTeamView> createState() => _AddTeamViewState();
}

class _AddTeamViewState extends State<AddTeamView> {
  final controller = TeamController();
  get name => controller.name;
  get badge => controller.badge;

  late TeamRepository teams = Provider.of<TeamRepository>(context);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  void saveTeam() {
    var team = Team(name: name, badge: badge);
    teams.saveTeam(team);
  }

  @override
  Widget build(BuildContext context) {
    teams = Provider.of<TeamRepository>(context);

    return Scaffold(
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
            BaskBigOkButton(saveTeam)
          ],
        ),
      ),
    );
  }
}
