import 'package:flutter/material.dart';

class TeamController extends ChangeNotifier {
  var name = "";
  var badge = "";

  void updateTeamName(value) {
    name = value;
    notifyListeners();
  }

  void updateTeamBadge(value) {
    badge = value;
    notifyListeners();
  }
}
