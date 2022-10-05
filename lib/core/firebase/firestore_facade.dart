import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreFacade {
  final FirebaseFirestore _firebaseFirestore;

  FirestoreFacade(this._firebaseFirestore);

  Future save(String collectionName, Map<String, dynamic> data) async {
    try {
      final collection = _firebaseFirestore.collection(collectionName);
      await collection.add(data);
    } catch (e) {
      throw Exception('Firebase save vote fail: ${e.toString()}');
    }
  }

  Future<Map<String, dynamic>> readLastVote(
      String collectionName, String voteType, String email) async {
    try {
      final collection = await _firebaseFirestore
          .collection(collectionName)
          .where('user', isEqualTo: email)
          .where('voteType', isEqualTo: voteType)
          .orderBy('date', descending: true)
          .limit(1)
          .get();

      return collection.docs.first.data();
    } catch (e) {
      throw Exception(
          'FIREBASE READ LAST VOTE FAIL [$voteType of $email ] : ${e.toString()}');
    }
  }

  CollectionReference<Map<String, dynamic>> call(String collectionName) {
    return _firebaseFirestore.collection(collectionName);
  }
}
