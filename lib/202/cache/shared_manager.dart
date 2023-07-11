import 'package:flutter_a/202/cache/shared_not_initiliaze.dart';
import 'package:shared_preferences/shared_preferences.dart';
enum SharedKeys{counter}
class SharedManager{
  SharedManager();
  SharedPreferences? preferences;
  void _checkPreferences(){
    if(preferences==null){
      throw SharedNotInitializeException();
    }
  }

  Future<void> init()async{
    _checkPreferences();
    preferences=await SharedPreferences.getInstance();
  }
  Future<void> saveString(SharedKeys key,String value)async{
    _checkPreferences();
    await preferences?.setString(key.name, value);
  }
  String? getString(SharedKeys key){
    _checkPreferences();
    return preferences?.getString(key.name);
  }
  Future<bool> removeItem(SharedKeys key)async{
    _checkPreferences();
    return await preferences?.remove(key.name) ?? false;
  }
}