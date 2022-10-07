import 'package:hymns/core/util/model.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';

class HymnModel extends Hymn implements Model {
  HymnModel(String title, int number, List<String> verses)
      : super(title, number, verses);

  @override
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'number': number,
      'verses': verses,
    };
  }

  @override
  factory HymnModel.fromJson(Map json) {
    List<String> verses = [];

    if (json['verses'] != null) {
      for (var element in (json['verses'] as List)) {
        verses.add(element);
      }
    }

    return HymnModel(
      json['title'] ?? '',
      json['number'] ?? 0,
      verses,
    );
  }
  factory HymnModel.copy(Hymn hymn) {
    return HymnModel(
      hymn.title,
      hymn.number,
      hymn.verses,
    );
  }
}
