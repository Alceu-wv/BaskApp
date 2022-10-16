import 'dart:convert';
import 'package:bask_app/src/models/time.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  TeamService().fetchTeams();
}

class TeamService {
  Future<List<Team>> fetchTeams() async {
    var url = 'http://10.0.2.2:3031/teams';
    print(url);
    final response = await http.get(
      Uri.parse(url),
    );
    print(response.body);
    var json = jsonDecode(response.body);
    print(json);
    final list = json as List;
    var teams = list.map((e) => Team.fromMap(e)).toList();
    print(teams);
    return teams;
  }
}
