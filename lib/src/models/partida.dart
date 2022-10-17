// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Match {
  final String? id;
  final String? teamId;
  final String? place;
  final String? date;
  final String? time;
  final int? maxPlayers;
  final int? price;

  Match({
    this.id,
    this.teamId,
    this.place,
    this.date,
    this.time,
    this.maxPlayers,
    this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'teamId': teamId,
      'place': place,
      'date': date,
      'time': time,
      'maxPlayers': maxPlayers,
      'price': price,
    };
  }

  factory Match.fromMap(Map<String, dynamic> map) {
    return Match(
      id: map['id'] != null ? map['id'] as String : null,
      teamId: map['teamId'] != null ? map['teamId'] as String : null,
      place: map['place'] != null ? map['place'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      time: map['time'] != null ? map['time'] as String : null,
      maxPlayers: map['maxPlayers'] != null ? map['maxPlayers'] as int : null,
      price: map['price'] != null ? map['price'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Match.fromJson(String source) =>
      Match.fromMap(json.decode(source) as Map<String, dynamic>);
}
