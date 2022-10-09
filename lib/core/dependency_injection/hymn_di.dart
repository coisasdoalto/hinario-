import 'package:get_it/get_it.dart';
import 'package:hymns/feature/hymns_and_songs/data/datasource/hymn_datasource.dart';
import 'package:hymns/feature/hymns_and_songs/data/repository/hymn_repository_impl.dart';
import 'package:hymns/feature/hymns_and_songs/domain/repository/hymn_repository.dart';
import 'package:hymns/feature/hymns_and_songs/domain/usecase/hymn_usecase.dart';

class HymnInjector {
  call() {
    GetIt.I.registerFactory<HymnDataSource>(() => HymnDataSource(
        ));

    GetIt.I.registerFactory<HymnRepository>(
        () => HymnRepositoryImpl(GetIt.I<HymnDataSource>()));

    GetIt.I.registerFactory<HymnUseCase>(
        () => HymnUseCaseImpl(GetIt.I<HymnRepository>()));
  }
}
