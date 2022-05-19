import 'package:flutter/material.dart';
import 'package:projeto01/controller/home_controller.dart';
import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository.dart';
import 'package:projeto01/repositories/home_repository_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<List<PostModel>>(
      valueListenable: _controller.posts,
      builder: (_, list, __) {
        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
                  title: Text(list[idx].title),
                ));
      },
    ));
  }
}
