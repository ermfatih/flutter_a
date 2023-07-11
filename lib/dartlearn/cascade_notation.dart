void main(){
  Bank bank=Bank('fatih', 1);

  //adına asd ekle ve idsini bir arttır ikisini ayrı ayrı yapabilirsin ya da cascade notation kullanabilirsin
  //burdaki olay iki nokta ..
  bank..name+='asd'..id+=1;

  print(bank.name);
  print(bank.id);
}
class Bank{
  String name;
  int id;
  Bank(this.name, this.id);
}