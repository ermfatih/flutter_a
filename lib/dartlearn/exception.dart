void main(){
  String userName='a';


  if(userName.length>2){
    print('merhaba');
  }
  else{
    throw UserNameException();
  }
}
class UserNameException implements Exception{

  @override
  String toString() {
    return 'userName in uzunluğu 2 den büyük olmalı ';
  }
}