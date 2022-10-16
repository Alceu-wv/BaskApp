import 'dart:collection';

import 'package:bask_app/src/models/time.dart';
import 'package:bask_app/src/services/team_service.dart';
import 'package:flutter/material.dart';

class TeamRepository with ChangeNotifier {
  late List<Team> _items = [];

  UnmodifiableListView<Team> get items => UnmodifiableListView(_items);

  fetchData() async {
    print("Trazendo dados do banco TEAMS");
    _items = await TeamService().fetchTeams();
    print(_items);
  }

  saveAll(List<Team> teams) {
    for (var team in teams) {
      if (_items.contains(team)) {
        _items.add(team);
      }
    }
    notifyListeners();
  }

  remove(Team team) {
    _items.remove(team);
    notifyListeners();
  }

  int get count {
    return _items.length;
  }
}
