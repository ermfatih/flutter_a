import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: const Icon(Icons.message),),
      appBar: AppBar(

        toolbarHeight: 80,
        title: Text("CHATAPP"),
      ),
      body: ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          return Card(child: ListTile(
            onTap: () {},
            leading: Icon(Icons.ac_unit),
            subtitle: Text("sonmesaj"),
            title: Text("asdf"),

          ));
        },
           )
    );
  }
}
