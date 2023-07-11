import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items=CollectionItems().items;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
        return _CategoryCard(model: _items[index]);
      },),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CollectionModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Expanded(child: Image.asset(model.imagePath)),
            Row(children: [
              Text(model.title),
              Text(model.price.toString()),
            ],)
          ],
        ),
      ),
    );
  }
}
class CollectionItems{
  late final List<CollectionModel> items;
  CollectionItems(){
    items=[
      CollectionModel(imagePath: 'assets/png/bat.png', title: 'abstract art', price: 3.4),
      CollectionModel(imagePath: 'assets/png/Screenshot2.png', title: 'abstract art', price: 3.4),
      CollectionModel(imagePath: 'assets/png/bat.png', title: 'abstract art', price: 3.4),
    ];
  }

}
class CollectionModel{
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price});
}