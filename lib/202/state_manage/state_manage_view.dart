import 'package:flutter/material.dart';
import 'package:flutter_a/101/image_learn.dart';
import 'package:flutter_a/202/state_manage/learn_view_model.dart';

class StateManageLearn extends StatefulWidget {
  const StateManageLearn({Key? key}) : super(key: key);

  @override
  State<StateManageLearn> createState() => _StateManageLearnState();
}
//burda yaptığımız view modeli extends ettik...
class _StateManageLearnState extends LearnViewModel{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          AnimatedContainer(
              height: MediaQuery.of(context).size.height*0.1,
              width:MediaQuery.of(context).size.height*0.1,
              color: isVisible ? Colors.red:Colors.blue,

              duration: _DurationItems.durationLow),
          //buildAnimatedIcon(),
          buildAnimatedDefaultTextStyle(context),
          buildListTile(),
          buildAnimatedCrossFade(),
        ],
      ),
    );
  }

  //AnimatedIcon buildAnimatedIcon() => AnimatedIcon(icon:AnimatedIcons.menu_close, progress: controller);

  AnimatedDefaultTextStyle buildAnimatedDefaultTextStyle(BuildContext context) => AnimatedDefaultTextStyle(child: Text('DATA'), style:isVisible ?( Theme.of(context).textTheme.headline3 ?? TextStyle()): (Theme.of(context).textTheme.subtitle1 ?? TextStyle())  , duration: _DurationItems.durationLow);

  ListTile buildListTile() {
    return ListTile(title:
    AnimatedOpacity(
        duration: _DurationItems.durationOpacity,
        opacity: isOpacity ? 1 : 0,
        child: Text('data',style: TextStyle(color: Colors.red),)),trailing: IconButton(onPressed: () {
      changeOpacity();
    },
      icon: Icon(Icons.add),));
  }

  AnimatedCrossFade buildAnimatedCrossFade() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState:isVisible ? CrossFadeState.showSecond: CrossFadeState.showFirst,
        duration: _DurationItems.durationLow);
  }
}
class _DurationItems{
  static const durationLow=Duration(seconds: 1);
  static const durationOpacity=Duration(seconds: 1);
}