import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('a' * 50),
          ),
          Container(
            height: 50,
            decoration: ProjectContainerDecoration(),
            constraints: BoxConstraints(maxWidth: 100, minWidth: 50, maxHeight: 150),
            padding: EdgeInsets.all(8), //içten
            margin: EdgeInsets.all(8), //dıştan
            child: Text('a' * 1000),


          ),
        ],
      ),
    );
  }
}
class ProjectContainerDecoration extends BoxDecoration{
  ProjectContainerDecoration():super(
      gradient: const LinearGradient(colors: [Colors.red,Colors.limeAccent]),
      borderRadius: BorderRadius.circular(10),
      boxShadow:const [BoxShadow(color: Colors.green,offset: Offset(0.1,1))],
      border: Border.all(width: 10,color: Colors.white12)
  );
}