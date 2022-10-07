import 'package:hymns/core/util/datasource.dart';
import 'package:hymns/core/firebase/firestore_facade.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';

class HymnDataSource implements DataSource<Hymn> {
  final FirestoreFacade _firestoreFacade;
  HymnDataSource(this._firestoreFacade);
  @override
  Future<Hymn> call({Map<String, dynamic>? param, FromJson? fromJson}) async {
    final collection = _firestoreFacade('hymns');

    final doc = await collection.limit(1).get();

    final Hymn hymn = fromJson!(doc.docs.first.data());
    
    return hymn;
  }
}
