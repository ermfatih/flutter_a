Future<void> main() async {
  print('a');
  await Future.delayed(Duration(seconds: 2));
  print('ab');
  //a yı yazar ab yi yazar 10 saniye bekler ve program durur.
  print('hello');
  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('hello4');
  });
  //burda gördüğümüz üzere once ana işlemler biter sonra future lar çalışır
}