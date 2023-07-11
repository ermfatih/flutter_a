import 'dart:math';

class CarModel{

  final CarModels category;
  String name;
  final double money;
  String? city;
  bool isSecondHand;


  @override
  String toString() {
    return '$name -$money';
  } //bu iki override ile yaptığımız listelerin referans tip olmasından kaynaklı
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarModel &&
          runtimeType == other.runtimeType &&
          category == other.category &&
          name == other.name &&
          money == other.money &&
          city == other.city &&
          isSecondHand == other.isSecondHand;

  @override
  int get hashCode =>
      category.hashCode ^
      name.hashCode ^
      money.hashCode ^
      city.hashCode ^
      isSecondHand.hashCode;

  CarModel({required this.category,required this.name, required this.money, this.city, this.isSecondHand=true});
}
enum CarModels{bmv,yamaha,toyota,mercedes}


void main(){
  final carItems=[
    CarModel(category: CarModels.toyota, name: 'a', money: 50,isSecondHand: false),
    CarModel(category: CarModels.yamaha, name: 'b', money: 40),
    CarModel(category: CarModels.bmv, name: 'c', money: 30),
    CarModel(category: CarModels.bmv, name: 'd', money: 25,isSecondHand: false),
  ];
  //bu arabaların kaç tanesi 2. el
  final resultCount=carItems.where((element) => element.isSecondHand==true).length;
  print(resultCount);
  //bu arabadan bizde var mı ?
  final newCar=CarModel(category: CarModels.bmv, name: 'd', money: 123,isSecondHand: false);

  final bool isHave=carItems.contains(newCar);
  print(isHave);

  //bana bmw olan ve moneysi 20 den büyük olanları getir
  final resultbmv=carItems.where((element) => element.money>20 && element.category==CarModels.bmv).join();
  print(resultbmv );

  final carNames=carItems.map((e) => e.name).join(',');
  print(carNames);

  //benim elimde mercedes var mı?

  try{
    final CarModel mercedes=carItems.singleWhere((element) => element.category==CarModels.mercedes);
    print(mercedes.name);
  }
  catch (e){
    print('element bulunamadı');
  }finally{
    print('abi bu işlem çok ağır oldu bidaha sorma');
  }

  carItems.sort((a, b) => a.name.compareTo(b.name),);

  print(carItems);

  void calculateToName(List<CarModel> items){
    //burda referansı değiştirdiği için asıl liste de değişiyo
    final _items=[...items.toList()];
    final newItems=_items.map((e){
      if(e.name=='a'){
        e.name='b';
      }
      if(e.isSecondHand){
        e.isSecondHand=false;
      }
      return e;
    }).toList();
  }
  void calculateToName2(List<CarModel> items){
    //manupüle olmasını istemiyorsak asıl listeye dokunmayacağız yani hiçbişeyi değiştirme...

    final newItems=items.map((e){
      return CarModel(category: CarModels.mercedes, name: e.name=='a'? 'b':e.name , money: e.money,isSecondHand: true);
    }).toList();
    print(newItems);
  }
  //calculateToName(List.of(carItems));
  calculateToName2(List.of(carItems));
  print(carItems);

  // diyo ki ben butun arabalarımı user yapıcam

  //final users=carItems.expand((element) => null);
}