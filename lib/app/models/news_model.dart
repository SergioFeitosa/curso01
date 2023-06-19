import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class NewsModel {
  final int id;
  final String name;
  final String content;
  final String description;
  final String author;
  final String ano;
  NewsModel({
    required this.id,
    required this.name,
    required this.content,
    required this.description,
    required this.author,
    required this.ano,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'content': content,
      'description': description,
      'author': author,
      'ano': ano,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      id: map['id'] as int,
      name: map['name'] as String,
      content: map['content'] as String,
      description: map['description'] as String,
      author: map['author'] as String,
      ano: map['ano'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) =>
      NewsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
