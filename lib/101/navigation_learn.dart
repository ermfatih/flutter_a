import 'package:flutter/material.dart';
import 'package:flutter_a/101/image_learn.dart';
import 'package:flutter_a/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager{
  List<int>selectedItems=[];
  void addSelected(int index){
    setState(() {
      selectedItems.add(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async{
            final response = await navigateToWidgetNormal<bool>(context, const NavigateDetailLearn());

            if(response==true){
              addSelected(index);
            }
          },
          child: Placeholder(
           color: selectedItems.contains(index) ? Colors.green:Colors.red,
          ),
        );
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{

        },child: const Icon(Icons.navigation),
      ),
    );
  }
}
mixin NavigatorManager{
  void navigateToWidget(BuildContext context,Widget widget){
    Navigator.of(context).push(
        MaterialPageRoute(
          settings: const RouteSettings(),
          fullscreenDialog: true,
          builder: (context) {
            return widget;
          },)
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context,Widget widget){
    return Navigator.of(context).push<T>(
        MaterialPageRoute(
          settings: const RouteSettings(),
          fullscreenDialog: true,
          builder: (context) {
            return widget;
          },)
    );
  }
}
