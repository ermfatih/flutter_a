import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_a/202/service/comment_model.dart';
import 'package:flutter_a/202/service/post_model.dart';

abstract class IPostService{
  Future<bool> _addItemToService(PostModel model);
  Future<bool> _putItemToService(PostModel model,int id);
  Future<bool> _deleteItemToService(PostModel model);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);


}
class PostService implements IPostService{
  final Dio _dio;
  PostService():_dio = Dio(BaseOptions(baseUrl:'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> _addItemToService(PostModel model) async {
    try{
      final response=await _dio.post('posts',data: model);
      return response.statusCode==HttpStatus.created;
    }on DioError catch(error){
      print(error.message);
    }
    return false;

  }
  @override
  Future<bool> _putItemToService(PostModel model,int id) async {
    try{
      final response=await _dio.put('posts/$id',data: model);
      return response.statusCode==HttpStatus.ok;
    }on DioError catch(error){
      print(error.message);
    }
    return false;

  }
  @override
  Future<bool> _deleteItemToService(PostModel model) async {
    try{
      final response=await _dio.delete('posts/${model.id}');
      return response.statusCode==HttpStatus.ok;
    }on DioError catch(error){
      print(error.message);
    }
    return false;

  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async{
    try {
      final response=await _dio.get('posts');
      if(response.statusCode==HttpStatus.ok){
        final _datas=response.data;
        if(_datas is List){
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    }on DioError catch(error){
      print(error.message);
    }
    return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId)async {
    try {
      final response=await _dio.get('posts',queryParameters:{'postId': postId} );
      if(response.statusCode==HttpStatus.ok){
        final _datas=response.data;
        if(_datas is List){
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    }on DioError catch(error){
      print(error.message);
    }
    return null;
  }
}