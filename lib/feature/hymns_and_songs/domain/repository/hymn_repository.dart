

import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';

abstract class HymnRepository {
  Future<Hymn> call();
}
