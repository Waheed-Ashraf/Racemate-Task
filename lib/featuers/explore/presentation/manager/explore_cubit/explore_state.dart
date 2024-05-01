part of 'explore_cubit.dart';

sealed class ExploreState extends Equatable {
  const ExploreState();

  @override
  List<Object> get props => [];
}

final class ExploreInitial extends ExploreState {}

final class ExploreRacesLoading extends ExploreState {}

final class ExploreRacesLoaded extends ExploreState {
  final List<RaceModel> exploreRacesData;

  const ExploreRacesLoaded({required this.exploreRacesData});
}

final class ExploreRacesSearchedList extends ExploreState {
  final List<RaceModel> searchedRacesData;

  const ExploreRacesSearchedList({required this.searchedRacesData});
}

final class ExploreRacesSearchedListEmpty extends ExploreState {}
