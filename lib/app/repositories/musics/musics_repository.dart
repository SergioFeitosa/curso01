import 'package:curso01/app/models/music_model.dart';

abstract interface class MusicsRepository {
  Future<List<MusicModel>> findAllMusics();
}
