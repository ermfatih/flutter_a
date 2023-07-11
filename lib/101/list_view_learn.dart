import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(child: Text('merhaba',style: Theme.of(context).textTheme.headline1,maxLines: 1)),
          Container(color: Colors.red,height: 300,),
          Divider(),
          Container(color: Colors.green,height: 300,),
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.cancel))
        ],
      ),
    );
  }
}
