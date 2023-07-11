import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {

            }, child: const Text('a')),
            ElevatedButton(onPressed: null, child: const Text('a')),
            IconButton(onPressed: () {

            }, icon:const Icon(Icons.add)),
            FloatingActionButton(onPressed: () {},child: const Icon(Icons.add),),
            OutlinedButton(onPressed: () {}, child: const Text('aaa')),
            InkWell(onTap: () {},child: const Text('data')),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('asd')),
            ElevatedButton(onPressed: () {}, child:  Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 20),
              child: Text('Button',style:Theme.of(context).textTheme.headline5),
            ),
                style:ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ) ,),
          ],
        ),
      ),

    );
  }
}
