

void main(){
  final name=Mouses.a4;
  print(name.isCheckName('a4'));
  print('alii'.isAdmin());

}

enum Mouses{
  magic,
  apple,
  logitech,
  a4
}
extension MousesSelectedExtension on Mouses{
  bool isCheckName(String name){
    return this.name==name;
  }
}
extension StringUserCheckExtension on String?{
  bool isAdmin(){
    return this=='ali';
  }
}
