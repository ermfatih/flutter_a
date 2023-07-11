import 'package:flutter_a/dartlearn/class_singleton.dart';

void main(){

  IDatabase database=Sql();
  database.write();//burada sql ile yazdık
  database=Mongo();
  database.write();//burda mongo ile yazdık ve hiçbir kodu değiştirmedik
}
//single responsibility

class UserManager{
  String name;

  UserManager(this.name);
  changeUserName(String name){
    this.name=name;
  }
  changeLocalization(){
    //burda bu işlem olmaz kardeşim yapma burda
  }
}
class UserLocalization{
  final UserManager userManager;

  UserLocalization(this.userManager);

  changeLocalization(){
    //hah işte tam burası bunun yeri

  }
  void updateAndChangeLocalization(){
    changeLocalization();
    userManager.changeUserName('asd');

  }
}
//-------------------------------------------------------------------------------
//open closed principle
//Bir sınıf ya da fonksiyon halihazırda var olan özellikleri korumalı ve değişikliğe izin vermemelidir. Yani davranışını değiştirmiyor olmalı ve yeni özellikler kazanabiliyor olmalıdır
class Product{
  final String name;
  final String money;

  Product(this.name, this.money);

}
class ProductCategory extends Product{
  ProductCategory(super.name, super.money, this.category);
  final String category;

}
//-------------------------------------------------------------------------------
// Liskov substitution principle
// Kodlarımızda herhangi bir değişiklik yapmaya gerek duymadan alt sınıfları, türedikleri(üst) sınıfların yerine kullanabilmeliyiz.

abstract class IDatabase{
  void write();
}
class Sql extends IDatabase{
  @override
  void write() {
    // TODO: implement write
  }
}
class Mongo extends IDatabase{
@override
void write() {
  // TODO: implement write
  }
}
//-------------------------------------------------------------------------------
//Interface segregation principle
//Sorumlulukların hepsini tek bir arayüze toplamak yerine daha özelleştirilmiş birden fazla arayüz oluşturmalıyız

abstract class IUserOperation with IUserLocation,IUserLanguage{
  void write();
  void read();
  void delete();
}
abstract class IUserLocation{
  void changeLocation();
}
abstract class IUserLanguage{
  void changeLanguage();
}

//-------------------------------------------------------------------------------
// Dependency Inversion Principle
// ÖZET: Sınıflar arası bağımlılıklar olabildiğince az olmalıdır özellikle üst seviye sınıflar alt seviye sınıflara bağımlı olmamalıdır.

