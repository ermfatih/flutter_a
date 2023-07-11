//singleton nedir diycek olursak classın sadece bir tane instancesi olsun istiyorsan yaparsın

class ProductConfig{
  //eagor singleton
  static final ProductConfig instance =ProductConfig._('a');
  final String apiKey;

  ProductConfig._(this.apiKey);
}
class ProductLazySingleton{
  //lazy singleton
  final String apiKey;
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance{
    if(_instance==null) _instance=ProductLazySingleton._init('a');
    return _instance!;
  }
  ProductLazySingleton._init(this.apiKey);
}