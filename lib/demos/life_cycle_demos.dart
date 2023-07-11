import 'package:flutter/material.dart';
import 'package:flutter_a/demos/color_demos_view.dart';

class LifeCycleDemos extends StatefulWidget {
  const LifeCycleDemos({Key? key}) : super(key: key);
  @override
  State<LifeCycleDemos> createState() => _LifeCycleDemosState();
}

class _LifeCycleDemosState extends State<LifeCycleDemos> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {
          setState(() {
            _backgroundColor=Colors.pink;
          });
        }, icon: const Icon(Icons.clear))],
      ),
      body: Column(
        children:[
          const Spacer(),
          Expanded(flex: 2,child: ColorDemos(initialColor: _backgroundColor ?? Colors.transparent,)),
        ],
      ),
    );
  }
}
