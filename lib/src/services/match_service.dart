import 'dart:convert';
import 'package:bask_app/src/models/partida.dart';
import 'package:http/http.dart' as http;

class MatchService {
  var url = 'http://10.0.2.2:3031/matchs';

  Future<List<Match>> fetchMatchs() async {
    print(url);

    final response = await http.get(
      Uri.parse(url),
    );
    print(response.body);
    
    var json = jsonDecode(response.body);   
    final list = json as List;
    var matchs = list.map((e) => Match.fromMap(e)).toList();
    
    return matchs;
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
