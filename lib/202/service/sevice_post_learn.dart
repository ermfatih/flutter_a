import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? _name;
  bool loading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void changeLoading() {
    setState(() {
      loading = !loading;
    });
  }
  Future<void> _addItemToService(PostModel model) async {
    changeLoading();
    final response=await _dio.post('posts',data: model);
    if(response.statusCode==HttpStatus.created){
      _name='başarili';
      print('basarili');
    }
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_name ?? ''),
        actions: [
          loading
              ? const Center(child: CircularProgressIndicator(color: Colors.red,))
              : SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            controller: _titleController,
            decoration: InputDecoration(hintText: 'title'),
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: _bodyController,
            decoration: InputDecoration(hintText: 'body'),
          ),
          TextField(
            controller: _userIdController,
            autofillHints: [AutofillHints.creditCardNumber],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'userId'),
          ),
          TextButton(onPressed: loading
              ? null
              :() {
            if(_titleController.text.isNotEmpty && _userIdController.text.isNotEmpty && _bodyController.text.isNotEmpty){
              final model=PostModel(body: _bodyController.text,title: _titleController.text,userId: int.tryParse(_userIdController.text));
              _addItemToService(model);
            }
          }, child: const Text('Send'))
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required PostModel? item,
  })  : _item = item,
        super(key: key);

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
