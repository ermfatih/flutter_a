class SharedNotInitializeException implements Exception{
  @override
  String toString() {

    return 'Yor preferences has not initialized right now';
  }
}