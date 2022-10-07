
import 'package:hymns/core/util/datasource.dart';
import 'package:hymns/feature/hymns_and_songs/data/model/hymn_model.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';
import 'package:hymns/feature/hymns_and_songs/domain/repository/hymn_repository.dart';

class HymnRepositoryImpl implements HymnRepository {
  final DataSource dataSource;

  HymnRepositoryImpl(this.dataSource);
  @override
  Future<Hymn> call() async {
    return await dataSource(fromJson: (json) => HymnModel.fromJson(json));
  }
}
