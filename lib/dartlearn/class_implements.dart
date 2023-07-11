abstract class IStudent{
  final String name;
  final String age;
  IStudent(this.name, this.age);

  void saySomthing(){
    print('say hello');
  }
}

class Student implements IStudent{


  @override
  String get age => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();
  void saya(){

  }

  @override
  void saySomthing() {
    // TODO: implement saySomthing
  }
}
class Student2 implements IStudent{
  final String name;
  final String age;

  Student2(this.name, this.age);

  @override
  void saySomthing() {
    // TODO: implement saySomthing
  }

}