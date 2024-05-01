import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optomatica_flutter_task/core/utils/service_locator.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/manager/explore_cubit/explore_cubit.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/widgets/explore_body.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExploreCubit>()..fitchAllExploreRaces(),
      child: const ExpolreBody(),
    );
  }
}
