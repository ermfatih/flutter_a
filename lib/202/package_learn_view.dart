import 'package:flutter/material.dart';
import 'package:flutter_a/202/package/loading_bar.dart';
import 'package:flutter_a/demos/password_textfield.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {      },),
      appBar: AppBar(),
      body:  Column(
        children: [
          PasswordTextField(),
           Text('data',style: Theme.of(context).textTheme.subtitle2),
           ElevatedButton(onPressed: () {
             
           }, child: Text('asd')),

        ],
      ),
    );
  }
}
