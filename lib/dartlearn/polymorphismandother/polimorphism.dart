void main(){
  IUser user=Turk();

  user.sayName();
  user=Eng('Adam');
  user.sayName();
}
abstract class IUser{
  final String name;

  IUser(this.name);
  void sayName();
}
class Turk implements IUser{
  @override
  String get name => 'fatih';

  @override
  void sayName() {
    print('hosgeldin bro $name');
  }
}
class Eng implements IUser{
  @override
  final String name;
  Eng(this.name);

  @override
  void sayName() {
    print('welcome bro $name');
  }
}