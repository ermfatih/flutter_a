import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({Key? key}) : super(key: key);
  final String _title='Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,//sayfada otomatik olarak back butonu gelmesin
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,//
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        leadingWidth: 100,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          //const Center(child: CircularProgressIndicator(),)
        ],
        actionsIconTheme: const IconThemeData(color: Colors.lime,size: 40),
      ),
      body: Column(
        children: const[],
      ),
    );
  }
}
