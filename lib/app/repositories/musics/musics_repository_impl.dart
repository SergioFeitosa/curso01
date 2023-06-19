import 'dart:developer';

import 'package:curso01/app/core/exceptions/repository_exception.dart';
import 'package:curso01/app/core/rest_client/custom_dio.dart';
import 'package:curso01/app/models/music_model.dart';
import 'package:dio/dio.dart';

import 'musics_repository.dart';

class MusicsRepositoryImpl implements MusicsRepository {
  final CustomDio dio;
  MusicsRepositoryImpl({required this.dio});

  @override
  Future<List<MusicModel>> findAllMusics() async {
    try {
      final result = await dio.unauth().get('/musics');
      return result.data.map<MusicModel>((m) => MusicModel.fromMap(m)).toList();
    } on DioException catch (e, s) {
      log('Erro ao buscar músicas', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar músicas');
    }
  }
}
