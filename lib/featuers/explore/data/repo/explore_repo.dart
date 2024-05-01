import 'package:optomatica_flutter_task/featuers/explore/data/models/race_model.dart';

abstract class ExploreRepo {
  Future<List<RaceModel>> getAllRaces();
  List<RaceModel> searchByRaceNameOrCountry(
      {required String raceNameOrCountary});
}
