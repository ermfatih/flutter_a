import 'package:flutter/material.dart';

class Padding_Learn extends StatelessWidget {
  const Padding_Learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: Container(
                height: 50,
                width: 50,
                color: Theme.of(context).backgroundColor),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingAll+ProjectPadding.pagePaddingHorizontal,
            child: Container(
              height: 100,
              width: 100,
              color:Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
class ProjectPadding{
  static const pagePaddingHorizontal=EdgeInsets.symmetric(horizontal: 10);
  static const pagePaddingAll=EdgeInsets.all(10);
}
