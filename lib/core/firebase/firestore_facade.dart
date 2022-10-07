import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreFacade {
  final FirebaseFirestore _firebaseFirestore;

  FirestoreFacade(this._firebaseFirestore);

  CollectionReference<Map<String, dynamic>> call(String collectionName) {
    return _firebaseFirestore.collection(collectionName);
  }
}
