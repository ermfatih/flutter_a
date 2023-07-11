void main(){
  Stream<int> bankMoney=Stream.empty();
  bankMoney=dataAddBankMoney(15, 3);
  bankMoney.listen((event) {
    print(event);
  });

}
Stream<int> dataAddBankMoney(int retryCount,int money) async*{
  int _localRetry=0;
  await Future.delayed(Duration(seconds: 2));
  while(_localRetry<retryCount){
    _localRetry++;
    yield money+=5;
  }
}