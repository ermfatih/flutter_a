void main() {
  SpecialUser user = SpecialUser('name', 12, 12, 12);
  print(user.discount);
  BankUser user2 = BankUser(name: 'fatih', 12, 12);
  print(user2.name);
}

abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('ah');
  }

}

class User extends IUser {
  User(String name, int money) : super(name, money);

}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(this.bankingCode,int money,{required String name}) : super(name , money);

}

class SpecialUser extends IUser {
  final int bankingCode;
  late final int _discount;
  SpecialUser(String name, int money, this.bankingCode, int discount)
      : super(name, money) {
    _discount = discount;
  }
  int get discount => _discount < 10 ? _discount : (_discount + 50);
}
