import 'package:flutter_a/dartlearn/singleton/product_config.dart';

void main(){
  print(Product().name);

  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance.apiKey;
}
class Product{
  String name;
  Product([this.name='fatih']);//bu kullanımda ise default olarak parametre atmış olursun
  factory Product.fromUser(User user){
    return Product(user.name);
  }
}
class User{
  String name;

  User(this.name);
}