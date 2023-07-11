void main(){
  final user=User('asd');
  print(user.data);
  final adminUser=AdminUser();
  removeUserAll<AdminUser>(adminUser);
}
void removeUserAll<T extends IAdmin>(T data){
  data.removeUser();
}


abstract class IAdmin{
  void removeUser();
}
class AdminUser extends IAdmin{
  @override
  void removeUser() {}
}
class User<T>{
  T data;

  User(this.data);

}
