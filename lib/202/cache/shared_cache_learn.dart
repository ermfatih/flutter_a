import 'package:flutter/material.dart';
import 'package:flutter_a/202/cache/shared_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedCacheLearn extends StatefulWidget {
  const SharedCacheLearn({Key? key}) : super(key: key);

  @override
  State<SharedCacheLearn> createState() => _SharedCacheLearnState();
}


class _SharedCacheLearnState extends LoadingState<SharedCacheLearn> {
  late final SharedManager _manager;
  late final List<User> userItems;

  int _currentValue = 0;
  void onChangeValue(String value){
    final _value=int.tryParse(value);
    if(_value!= null){
      setState(() {
        _currentValue=_value;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getDefaultValues();
    _manager=SharedManager();
    _initialize();
    userItems=UserItems().users;
  }
  Future<void> _initialize()async{
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValues();
  }
  Future<void> getDefaultValues() async {
    onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading ? Center(child: CircularProgressIndicator(color: Theme.of(context).scaffoldBackgroundColor,)):SizedBox.shrink()
        ],
        title: Text(_currentValue.toString()),),
      floatingActionButton:
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          saveFloatButton(),
          removeFloatButton(),

        ],
      ),


      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              onChangeValue(value);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userItems.length,
              itemBuilder: (context, index) {
                return Text('data');
            },),
          )
        ],
      ),
    );
  }

  FloatingActionButton saveFloatButton(){
    return FloatingActionButton(child: Icon(Icons.save),onPressed: () async {
          changeLoading();
          await _manager.saveString(SharedKeys.counter, _currentValue.toString());
          changeLoading();
        },
        );
  }
  FloatingActionButton removeFloatButton(){
    return FloatingActionButton(child: const Icon(Icons.remove),onPressed: () async {
      changeLoading();
      await _manager.removeItem(SharedKeys.counter);
      changeLoading();
    },
    );
  }
}
class User{
  final String name;
  final String description;
  final String url;

  User(this.name, this.description, this.url);
}
class UserItems{
  late final List<User> users;
  UserItems(){
    users= [
      User('fth', 'sda', 'asda.e'),
      User('fth2', 'sda', 'asda.e'),
      User('fth3', 'sda', 'asda.e'),
    ];
  }
}
abstract class LoadingState<T extends StatefulWidget>extends State<T>{
  bool isLoading=false;

  void changeLoading(){
    setState(() {
      isLoading=!isLoading;
    });
  }
}