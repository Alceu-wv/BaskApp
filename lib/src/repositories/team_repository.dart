import 'dart:collection';

import 'package:bask_app/src/models/partida.dart';
import 'package:bask_app/src/models/time.dart';
import 'package:bask_app/src/services/match_service.dart';
import 'package:bask_app/src/services/team_service.dart';
import 'package:flutter/material.dart';

class TeamRepository with ChangeNotifier {
  late List<Team> _teams = [];
  late List<Match> _matchs = [];

  UnmodifiableListView<Team> get items => UnmodifiableListView(_teams);

  fetchData() async {
    print("Trazendo dados do banco TEAMS");
    _teams = await TeamService().fetchTeams();
    print(_teams);

    print("Trazendo dados do banco MATCHS");
    _matchs = await MatchService().fetchMatchs();
    print(_matchs);
  }

  saveTeam(List<Team> teams) {
    for (var team in teams) {
      if (_teams.contains(team)) {
        _teams.add(team);
      }
    }
    notifyListeners();
  }

  saveMatch(List<Match> matchs) {
    for (var match in matchs) {
      if (_matchs.contains(match)) {
        _matchs.add(match);
      }
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
