import 'package:flutter_a/dartlearn/class%20learn/users_model.dart';

void main(){
  List<int?> customerMoney=[100,null,0];
  for(var l in customerMoney){
    if(l ==null)
    {
      print('null');
    }
    else{
      if(l >0){
        print('beyfendi');
      }
      else{
        print('byy');
      }
    }
  }
  //final user=User('fatih', 'Gazi', null);
  final user=User('fatih', 'Gazi');
  final user2=User('fatih', 'Gazi', money: 12);
  //final users=Users('fatih', 12, id: '1');
  //print(users.userCode);
  final users=Users('1' ,'fatih', 12);

}
class User{
  late final String name;
  late final String city;
  late final int? money;

  User(String name,String city,{int? money}){
    this.name=name;
    this.city=city;
    this.money=money;
  }
}
