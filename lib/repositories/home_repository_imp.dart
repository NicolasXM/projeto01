import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');

    List postjson = jsonDecode(value);

    return postjson.map((e) => PostModel.fromJson(e)).toList();

    // o "e" seria cada objeto do Json
  }
}
