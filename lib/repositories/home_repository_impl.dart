import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    return (response.data as List).map((e) => PostModel.fromJson(e)).toList();

    return [];
  }
}
