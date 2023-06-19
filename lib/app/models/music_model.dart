import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MusicModel {
  final int id;
  final String name;
  final String description;
  final String author;
  final String year;
  final String link;
  final String image;
  MusicModel({
    required this.id,
    required this.name,
    required this.description,
    required this.author,
    required this.year,
    required this.link,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'author': author,
      'year': year,
      'link': link,
      'image': image,
    };
  }

  factory MusicModel.fromMap(Map<String, dynamic> map) {
    return MusicModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      author: map['author'] as String,
      year: map['year'] as String,
      link: map['link'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MusicModel.fromJson(String source) =>
      MusicModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
