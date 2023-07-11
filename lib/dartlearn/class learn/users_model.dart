class Users {
  final String name;
  final String? city;
  final int? money;
  final int age;
  late final userCode;
  late final String _id;

  String get id => _id;

  set id(String id) {
    _id = id;
  }

  Users(String id, this.name, this.age, {this.city, this.money}) {
    userCode = (city ?? 'ist ') + name;
    _id = id;
  }
}
