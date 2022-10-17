import 'dart:collection';

import 'package:bask_app/src/models/partida.dart';
import 'package:bask_app/src/models/time.dart';
import 'package:bask_app/src/services/match_service.dart';
import 'package:bask_app/src/services/team_service.dart';
import 'package:flutter/material.dart';

class TeamRepository with ChangeNotifier {
  late List<Team> _teams = [];
  late List _matchs = [];

  UnmodifiableListView<Team> get teams => UnmodifiableListView(_teams);
  UnmodifiableListView get matchs => UnmodifiableListView(_matchs);

  fetchData() async {
    print("Trazendo dados do banco TEAMS");
    _teams = await TeamService().fetchTeams();
    print(_teams);

    print("Trazendo dados do banco MATCHS");
    var allMatchs = await MatchService().fetchMatchs();
    var matchGroups = [];
    for (var i = 0; i < _teams.length; i++) {
      matchGroups.add(allMatchs.where((value) => value.teamId == _teams[i].id));
    }
    _matchs = matchGroups;
    print("******************  $_matchs");
  }

  saveTeam(Team team) {
    if (!_teams.contains(team) && team.name != null && team.name != "") {
      TeamService().createTeam(team);
      notifyListeners();
    }
  }

  saveMatch(Match match) {
    if (!_matchs.contains(match)) {
      _matchs.add(match);
    }
    notifyListeners();
  }

  removeTeam(Team team) {
    _teams.remove(team);
    notifyListeners();
  }

  removeMatch(Match match) {
    _matchs.remove(match);
    notifyListeners();
  }

  int get count {
    return _teams.length;
  }

  int get countMatchs {
    return _matchs.length;
  }
}
