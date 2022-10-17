import 'dart:convert';
import 'package:bask_app/src/models/time.dart';
import 'package:http/http.dart' as http;

class TeamService {
  var url = 'http://10.0.2.2:3031/teams';

  Future<List<Team>> fetchTeams() async {
    print(url);

    final response = await http.get(
      Uri.parse(url),
    );
    print(response.body);

    var json = jsonDecode(response.body);
    final list = json as List;
    var teams = list.map((e) => Team.fromMap(e)).toList();

    return teams;
  }

  void createTeam(Team team) async {
    var body = team.toJson();
    final headers = {"Content-type": "application/json"};
    var response = await http.post(Uri.parse(url), headers: headers, body: body);
    print(response.statusCode);
    print(response.body);
  }
}



// class TeamService {
//   Future<List<Team>> fetchTeams() async {
//     var url = 'http://192.168.15.3:3031/teams';
//     print(url);
//     final response = await http.get(
//       Uri.parse(url),
//     );
//     print(response);
//     final list = response.body as List;
//     return list.map((e) => Team.fromMap(e)).toList();
//   }
// }
