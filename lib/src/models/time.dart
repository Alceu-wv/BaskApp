// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Team {
  final String? id;
  final String? name;
  final String? badge;

  Team({this.id, this.name, this.badge});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'badge': badge,
    };
  }

  factory Team.fromMap(Map<String, dynamic> map) {
    return Team(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      badge: map['badge'] != null ? map['badge'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Team.fromJson(String source) => Team.fromMap(json.decode(source) as Map<String, dynamic>);
}

  // final String city;
  // final DateTime created_at;
  // final DateTime updated_at;
  // final DateTime deleted_at;