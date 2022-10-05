import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hymns/core/firebase/exception/storage_facade_exception.dart';

class StorageFacade {
  final FirebaseStorage _firebaseStorage;

  StorageFacade(this._firebaseStorage);

  Future<String> call(File file, String fileName) async {
    try {
      final ref = _firebaseStorage.ref(fileName);
      final uploadTask =
          await ref.putFile(file, SettableMetadata(contentType: 'image/jpg'));

      if (uploadTask.state == TaskState.success) {
        final url = await ref.getDownloadURL();
        return url;
      } else {
        throw StorageFacadeException('Fail upload file');
      }
    } catch (e) {
      throw StorageFacadeException('Fail upload file');
    }
  }
}
