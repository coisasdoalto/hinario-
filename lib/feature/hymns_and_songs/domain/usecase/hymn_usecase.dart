
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';
import 'package:hymns/feature/hymns_and_songs/domain/repository/hymn_repository.dart';

abstract class HymnUseCase {
  Future<Hymn> call();
}

class HymnUseCaseImpl implements HymnUseCase {
  final HymnRepository repository;

  HymnUseCaseImpl(this.repository);
  @override
  Future<Hymn> call() async {
    return await repository.call();
  }
}
