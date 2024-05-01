import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optomatica_flutter_task/core/widgets/custom_loading_indicator.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/manager/explore_cubit/explore_cubit.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/race_item.dart';

class RacesList extends StatelessWidget {
  const RacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreCubit, ExploreState>(
      builder: (context, state) {
        if (state is ExploreRacesLoaded) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.exploreRacesData.length,
            itemBuilder: (context, index) {
              return RaceItem(
                raceModel: state.exploreRacesData[index],
              );
            },
          );
        } else if (state is ExploreRacesSearchedList) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.searchedRacesData.length,
            itemBuilder: (context, index) {
              return RaceItem(
                raceModel: state.searchedRacesData[index],
              );
            },
          );
        } else if (state is ExploreRacesSearchedListEmpty) {
          return const Center(
            child: Text('Try searching something else'),
          );
        } else {
          return const CustomLoadingIndicator(
              hight: 120, loadingImg: "assets/images/loading_running.json");
        }
      },
    );
  }
}
