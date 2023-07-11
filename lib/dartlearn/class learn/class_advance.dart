import 'package:flutter_a/dartlearn/class%20learn/class_learn.dart';

void main(){
  final user2=_User('fatih',age: 12);
  final user3=_User('ali',age: 13);
  var result=user3+user2;
  print(result.toString());
  final user=_User('fatih',age: null);
  if(user.age is int){
    if(user.age! <18){
      print('evet');
    }
  }
}

class _User with UserMixin{
  final String name;
  int? age;
  _User(this.name,{this.age});


  // custom operator yapmak...
  int operator + (_User user){
    return (age ?? 0) + (user.age ?? 0);
  }
  @override
  void sayBankHello(int money) {
    print(12);
  }
}

mixin UserMixin{
  void sayBankHello(int money){
    print('hello');
  }
}