class StorageFacadeException implements Exception {
  final dynamic message;

  StorageFacadeException([this.message]);

  @override
  String toString() {
    return "Exception: Firebase Storage fail";
  }
}
