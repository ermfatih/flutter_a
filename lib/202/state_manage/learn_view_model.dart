//BURDA view model oluşturduk...
import 'package:flutter/material.dart';
import 'package:flutter_a/202/state_manage/state_manage_view.dart';

abstract class LearnViewModel extends State<StateManageLearn> with TickerProviderStateMixin{
  bool isVisible=false;
  bool isOpacity=false;
  @override
  void initState() {
    super.initState();
  }

  void changeVisible(){
    setState(() {
      isVisible=!isVisible;
    });
  }
  void changeOpacity(){
    setState(() {
      isOpacity=!isOpacity;
    });
  }
}