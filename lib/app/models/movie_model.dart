import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieModel {
  final int id;
  final String name;
  final String description;
  final String author;
  final String ano;
  MovieModel({
    required this.id,
    required this.name,
    required this.description,
    required this.author,
    required this.ano,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'author': author,
      'ano': ano,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      author: map['author'] as String,
      ano: map['ano'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
