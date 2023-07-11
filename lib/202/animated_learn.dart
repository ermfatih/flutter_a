import 'package:flutter/material.dart';
import 'package:flutter_a/101/image_learn.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn> with TickerProviderStateMixin{
  bool _isVisible=false;
  bool _isOpacity=false;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration: _DurationItems.durationLow);
  }

  void changeVisible(){
    setState(() {
      _isVisible=!_isVisible;
    });
  }
  void changeOpacity(){
    setState(() {
      _isOpacity=!_isOpacity;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
          controller.animateTo(_isVisible ? 0:1);
        },
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          AnimatedContainer(
              height: MediaQuery.of(context).size.height*0.1,
              width:MediaQuery.of(context).size.height*0.1,
            color: _isVisible ? Colors.red:Colors.blue,

              duration: _DurationItems.durationLow),
          buildAnimatedIcon(),
          buildAnimatedDefaultTextStyle(context),
          buildListTile(),
          buildAnimatedCrossFade(),
        ],
      ),
    );
  }

  AnimatedIcon buildAnimatedIcon() => AnimatedIcon(icon:AnimatedIcons.menu_close, progress: controller);

  AnimatedDefaultTextStyle buildAnimatedDefaultTextStyle(BuildContext context) => AnimatedDefaultTextStyle(child: Text('DATA'), style:_isVisible ?( Theme.of(context).textTheme.headline3 ?? TextStyle()): (Theme.of(context).textTheme.subtitle1 ?? TextStyle())  , duration: _DurationItems.durationLow);

  ListTile buildListTile() {
    return ListTile(title:
        AnimatedOpacity(
          duration: _DurationItems.durationOpacity,
            opacity: _isOpacity ? 1 : 0,
            child: Text('data',style: TextStyle(color: Colors.red),)),trailing: IconButton(onPressed: () {
              changeOpacity();
        },
        icon: Icon(Icons.add),));
  }

  AnimatedCrossFade buildAnimatedCrossFade() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: const SizedBox.shrink(),
        crossFadeState:_isVisible ? CrossFadeState.showSecond: CrossFadeState.showFirst,
        duration: _DurationItems.durationLow);
  }
}
class _DurationItems{
  static const durationLow=Duration(seconds: 1);
  static const durationOpacity=Duration(seconds: 1);
}