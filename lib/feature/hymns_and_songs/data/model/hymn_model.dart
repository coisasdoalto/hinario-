import 'package:hymns/core/util/model.dart';
import 'package:hymns/feature/hymns_and_songs/data/model/stanza_model.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/stanza.dart';

class HymnModel extends Hymn implements Model {
  HymnModel(
    String chorus,
    dynamic number,
    dynamic originalNumber,
    String originalTitle,
    List<Stanza> stanzas,
    String title,
  ) : super(
          chorus,
          number,
          originalNumber,
          originalTitle,
          stanzas,
          title,
        );

  @override
  Map<String, dynamic> toMap() {
    return {
      'chorus': chorus,
      'number': number,
      'originalNumber': originalNumber,
      'originalTitle': originalTitle,
      'stanzas':
          stanzas.map((choice) => StanzaModel.copy(choice).toMap()).toList(),
      'title': title,
    };
  }

  @override
  factory HymnModel.fromJson(Map json) {
    return HymnModel(
      json['chorus'] ?? "",
      json['number'] ?? 0,
      json['originalNumber'] ?? 0,
      json['originalTitle'] ?? '',
      ((json['stanzas'] ?? []) as List)
          .map((answer) => StanzaModel.fromJson(answer))
          .toList(),
      json['title'] ?? "",
    );
  }
  factory HymnModel.copy(Hymn hymn) {
    return HymnModel(
      hymn.chorus,
      hymn.number,
      hymn.originalNumber,
      hymn.originalTitle,
      hymn.stanzas,
      hymn.title,
    );
  }
}
