void main(){
  Map<String,int> users={
    'ahmet':12,
    'mehmet':15,
  };
  print(users['ahmet']);
  print('-----------------');
  for(var item in users.keys){
    print(users[item]);
  }
  print('-----------------');
  for(var i =0 ;i<users.length; i++){
    print(users.keys.elementAt(i));
  }
  print('-----------------');
  users.forEach((key, value) {
    print('$key :$value ');
  });
  print('-----------------');

  Map<String,List<int>> bank ={
    'mehmet':[100,200,300],
    'ali':[38,50],
    'ahmet':[30],
  };
  for(var item in bank.keys){
    for(var items in bank[item]!){
      if(items>150){
        print('kredin hazır');
        return;
      }
    }
  }
}