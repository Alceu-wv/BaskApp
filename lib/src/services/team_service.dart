import 'package:bask_app/src/models/time.dart';
import 'package:uno/uno.dart';

class TeamService {
  final Uno uno;

  TeamService(this.uno);

  Future<List<Team>> fetchTeams() async {
    final response = await uno.get('http://localhost:3031/teams');
    final list = response.data as List;
    return list.map((e) => Team.fromMap(e)).toList();
  }
}
