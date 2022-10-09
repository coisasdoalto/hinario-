import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hymns/core/util/datasource.dart';
import 'package:hymns/feature/hymns_and_songs/data/model/hymn_model.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';

class HymnDataSource implements DataSource<List<Hymn>> {
  HymnDataSource();
  @override
  Future<List<Hymn>> call(
      {Map<String, dynamic>? param, FromJson? fromJson}) async {
    final collection =
        await FirebaseFirestore.instance.collection('hinosEspirituais').get();

    List<Hymn> hymns = [];

    for (var doc in collection.docs) {
      var json = doc.data();
      final HymnModel aux = HymnModel.fromJson(json);

      final hymn = Hymn(
        aux.chorus,
        aux.number is int ? aux.number : int.parse(aux.number),
        aux.originalNumber is int ? aux.originalNumber : 0,
        aux.originalTitle,
        aux.stanzas,
        aux.title,
      );

      hymns.add(hymn);
    }

    hymns.sort((a, b) => a.number.compareTo(b.number));

    return hymns;
  }
}
