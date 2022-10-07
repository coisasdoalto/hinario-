import 'package:hymns/core/dependency_injection/firebase_di.dart';
import 'package:hymns/core/dependency_injection/hymn_di.dart';
import 'package:hymns/core/dependency_injection/pages_di.dart';

class Injector {
  call() {
    FirebaseInjector()();
    HymnInjector()();
    PagesInjector()();
  }
}
