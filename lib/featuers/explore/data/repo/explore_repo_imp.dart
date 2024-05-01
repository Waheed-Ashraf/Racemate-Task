import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/models/race_model.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/repo/explore_repo.dart';

class ExploreRepoImp implements ExploreRepo {
  @override
  Future<List<RaceModel>> getAllRaces() async {
    final String response =
        await rootBundle.loadString('assets/races_data.json');
    final data = await json.decode(response);

    for (var element in data) {
      racesData.add(RaceModel.fromJson(element));
    }
    return racesData;
  }

  @override
  List<RaceModel> searchByRaceNameOrCountry(
      {required String raceNameOrCountary}) {
    var searchedRacesName = racesData.where((element) {
      var raceName = element.name.toLowerCase();

      return raceName.contains(raceNameOrCountary);
    }).toList();
    var searchedRacesCountry = racesData.where((element) {
      var raceName = element.country.toLowerCase();

      return raceName.contains(raceNameOrCountary);
    }).toList();
    List<RaceModel> searchedRaces = [];
    for (var element in searchedRacesName) {
      searchedRaces.add(element);
    }
    for (var element in searchedRacesCountry) {
      searchedRaces.add(element);
    }
    return searchedRaces;
  }
}

List<RaceModel> racesData = [];
