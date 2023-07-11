import 'dart:io';

import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({Key? key}) : super(key: key);

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context,
            backgroundColor: Colors.red,
            barrierColor: Colors.transparent,
            shape:const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12))) ,
            isScrollControlled: false,
            builder: (context) {
            return _CustomSheet();
          },);
        },
        child:const Icon(Icons.share),

      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor=Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            const Text('data'),
            ElevatedButton(onPressed: () {

              setState(() {
                _backgroundColor=Colors.amber;
              });
              Navigator.of(context).pop();
            }, child:const Text('ok')),
          ],
        ),
      ),
    );
  }
}
