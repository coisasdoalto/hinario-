import 'package:get_it/get_it.dart';
import 'package:hymns/feature/hymns_and_songs/domain/usecase/hymn_usecase.dart';
import 'package:hymns/presentation/home/home_bloc.dart';

class PagesInjector {
  call() {
    GetIt.I.registerFactory<HomeBloc>(
        () => HomeBloc(GetIt.I<HymnUseCase>()));

  }
}
