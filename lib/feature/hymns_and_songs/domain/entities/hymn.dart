import 'package:hymns/feature/hymns_and_songs/domain/entities/stanza.dart';

class Hymn {
  final String chorus;
  final dynamic number;
  final dynamic originalNumber;
  final String originalTitle;
  final List<Stanza> stanzas;
  final String title;

  Hymn(this.chorus, this.number, this.originalNumber, this.originalTitle,
      this.stanzas, this.title);
}
