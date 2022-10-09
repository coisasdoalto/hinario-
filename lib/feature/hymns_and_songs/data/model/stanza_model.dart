import 'package:hymns/core/util/model.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/stanza.dart';

class StanzaModel extends Stanza implements Model {
  StanzaModel(
  String text,
  int number,
  ) : super(
    text,
    number
  );

  @override
  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'number': number,
    };
  }

  @override
  factory StanzaModel.fromJson(Map json) {
    return StanzaModel(
      json['text'] ?? '',
      json['number'] ?? 0,
    );
  }
  factory StanzaModel.copy(Stanza hymn) {
    return StanzaModel(
      hymn.text,
      hymn.number,
    );
  }
}
