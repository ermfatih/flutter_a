import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a/202/service/post_model.dart';
import 'package:flutter_a/202/service/post_service.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  late final IPostService _postService;
  List<PostModel>? _items;
  bool loading=false;
  late final Dio _dio;
  final _baseUrl='https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    _dio=Dio(BaseOptions(baseUrl:_baseUrl));
    //fetchPostITems();
    _postService=PostService();
    fetchPostITemsAdvancee();

  }

  void changeLoading(){
    setState(() {
      loading=!loading;
    });
  }

  Future<void> fetchPostITems() async{
   changeLoading();
    final response=await Dio().get('https://jsonplaceholder.typicode.com/posts/');
    if(response.statusCode==HttpStatus.ok){
      final _datas=response.data;
      if(_datas is List){
        setState(() {
          _items=_datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
   changeLoading();
  }
  Future<void> fetchPostITemsAdvancee() async{
    changeLoading();
    _items=await _postService.fetchPostItemsAdvance();
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [loading ? const Center(child: CircularProgressIndicator()): SizedBox.shrink()
      ],

      ),
      body: _items == null ? const Placeholder():ListView.builder(
        itemCount: _items?.length ?? 3 ,
        itemBuilder: (context, index) {
        return PostCard(item: _items?[index]);
      },),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required PostModel? item,}) :_item=item , super(key: key);

  final PostModel? _item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_item?.title ?? ''),
        subtitle: Text(_item?.body ?? ''),
      ),
    );
  }
}

