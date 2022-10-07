import 'dart:async';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';
import 'package:hymns/feature/hymns_and_songs/domain/usecase/hymn_usecase.dart';

class HomeBloc {
  final HymnUseCase useCase;

  HomeBloc(
    this.useCase
  );

  final StreamController<Hymn> _hymnController = StreamController();
  Stream<Hymn> get hymnStream => _hymnController.stream;
  Function(Hymn) get _addHymn => _hymnController.sink.add;

  loanHymn() async {
    var hymn = await useCase();

    _addHymn(hymn);
  }
}
