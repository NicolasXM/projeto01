import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto01/controller/home_controller.dart';
import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository.dart';
import 'package:projeto01/repositories/home_repository_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImpl());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: SingleChildScrollView(
          child: ValueListenableBuilder<List<PostModel>>(
            valueListenable: _controller.posts,
            builder: (_, list, __) {
              return ListView.separated(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (_, idx) => ListTile(
                  leading: Text(list[idx].id.toString()),
                  trailing: Icon(Icons.arrow_forward),
                  title: Text(list[idx].title),
                  onTap: () => Navigator.of(context)
                      .pushNamed('/details', arguments: list[idx]),
                ),
                separatorBuilder: (_, __) => Divider(),
              );
            },
          ),
        ));
  }
}
