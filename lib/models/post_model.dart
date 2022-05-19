import 'dart:convert';

class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.title, this.body);

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory PostModel.fromJson(Map json) {
    return PostModel(
      json['userId'],
      json['id'],
      json['title'],
      json['body'],
    );
  }
}
