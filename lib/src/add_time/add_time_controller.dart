import 'package:flutter/material.dart';

class TimeController extends ChangeNotifier {
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
