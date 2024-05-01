import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/models/race_model.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/repo/explore_repo.dart';

part 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  final ExploreRepo _exploreRepo;
  ExploreCubit(this._exploreRepo) : super(ExploreInitial());
  Future fitchAllExploreRaces() async {
    emit(ExploreRacesLoading());
    List<RaceModel> racesData = await _exploreRepo.getAllRaces();
    emit(ExploreRacesLoaded(exploreRacesData: racesData));
  }

  fitchAllSearchedRaces({required String raceNameOrCountry}) {
    emit(ExploreRacesLoading());
    List<RaceModel> searchedRaces = _exploreRepo.searchByRaceNameOrCountry(
        raceNameOrCountary: raceNameOrCountry);
    if (searchedRaces.isEmpty) {
      emit(ExploreRacesSearchedListEmpty());
    } else {
      emit(ExploreRacesSearchedList(searchedRacesData: searchedRaces));
    }
  }
}
