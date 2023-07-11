void main(){
  User user=User(5);
  user.calculateMoney((data) {
    data+=5;
    print(data);
    return data;
  },);
}

typedef CalculateCallBack=int Function(int data);
class User{
  int money;

  User(this.money);
  void calculateMoney(CalculateCallBack onComplete){
    money+=5;
    final passData= onComplete(money);
    print(passData);

  }
}