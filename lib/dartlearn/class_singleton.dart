void main(){
  //static olan productı çağırdık
  final newProduct=Product.money;
}

class Product{
  //singleton denen şey static
  static int money=10;
}