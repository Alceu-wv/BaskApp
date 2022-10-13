import 'package:flutter/material.dart';

class AddPartidaController {
  var place$ = ValueNotifier("");
  String get place => place$.value;
  void setPlace(value) {
    print(value);
    place$.value = value;
  }

  var date$ = ValueNotifier("");
  String get date => date$.value;
  void setDate(value) {
    print(value);
    date$.value = value;
  }

  var time$ = ValueNotifier("");
  String get time => time$.value;
  void setTime(value) {
    print(value);
    time$.value = value;
  }

  var maxPlayers$ = ValueNotifier("");
  String get maxPlayers => maxPlayers$.value;
  void setMaxPlayers(value) {
    print(value);
    maxPlayers$.value = value;
  }

  var price$ = ValueNotifier("");
  String get price => price$.value;
  void setPrice(value) {
    print(value);
    price$.value = value;
  }
}
