import 'package:flutter/material.dart';
import 'package:flutter_a/101/color_learn.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color backGraundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    backGraundColor=widget.initialColor ?? Colors.transparent;
  }
  void changeBackGraundColor(Color color) {
    setState(() {
      backGraundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGraundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: _AddIconButton(
                onPressed:() {
                  changeBackGraundColor(Colors.yellow);
                },
                color: Colors.yellow,
                icon: Icon(Icons.add),
              ),
              label: 'yellow'),
          BottomNavigationBarItem(
              icon: _AddIconButton(onPressed: () {
                changeBackGraundColor(Colors.red);
              },
              color: Colors.red, icon: Icon(Icons.add)),
              label: 'red'),
        ],
      ),
    );
  }
}

class _AddIconButton extends StatelessWidget {
  _AddIconButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  final Icon icon;
  final Color color;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: color,
    );
  }
}
