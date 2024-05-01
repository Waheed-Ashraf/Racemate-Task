import 'package:get_it/get_it.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/repo/explore_repo.dart';
import 'package:optomatica_flutter_task/featuers/explore/data/repo/explore_repo_imp.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/manager/explore_cubit/explore_cubit.dart';

GetIt getIt = GetIt.instance;

void serviceLocator() {
  // cubit
  getIt.registerFactory<ExploreCubit>(() => ExploreCubit(getIt()));

  //Repo
  getIt.registerLazySingleton<ExploreRepo>(() => ExploreRepoImp());
}
