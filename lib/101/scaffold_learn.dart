import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold Samples"),titleSpacing: 100),
      body: const Text('data'),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'e',backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'e',backgroundColor: Colors.green),
        ],
      ),
      backgroundColor: Colors.red,
      bottomSheet: Text('asd'),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context) => Container(
          height: 200,
        ),);
      },),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const Drawer(width: 200,backgroundColor: Colors.green,semanticLabel: "fatih",),
      //drawerScrimColor: Colors.lime,

    );
  }
}

