import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hymns/core/firebase/firestore_facade.dart';
import 'package:hymns/core/firebase/storage_facade.dart';
import 'package:get_it/get_it.dart';

class FirebaseInjector {
  call() {
    GetIt.I.registerFactory<StorageFacade>(() => StorageFacade(
          FirebaseStorage.instance,
        ));
    GetIt.I.registerFactory<FirestoreFacade>(
        () => FirestoreFacade(FirebaseFirestore.instance));
  }
}
