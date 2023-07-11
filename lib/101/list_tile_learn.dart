import 'package:flutter/material.dart';
import 'package:flutter_a/core/asset_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ListTile(
          onTap: () {},
          title: const AssetImageRandom(),
          subtitle: const Text('How do you use your card'),
          leading: const Icon(Icons.money),
          trailing: const Icon(Icons.chevron_right),
        )
      ]),
    );
  }
}
