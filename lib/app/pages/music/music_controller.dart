import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:curso01/app/pages/music/music_state.dart';
import 'package:curso01/app/repositories/musics/musics_repository.dart';

class MusicController extends Cubit<MusicState> {
  final MusicsRepository musicsRepository;

  MusicController(this.musicsRepository) : super(const MusicState.initial());

  Future<void> loadMusics() async {
    emit(state.copyWith(status: MusicStateStatus.loading));
    try {
      final musics = await musicsRepository.findAllMusics();
      emit(state.copyWith(status: MusicStateStatus.loaded, musics: musics));
    } catch (e, s) {
      log('Erro ao buscar musicas', error: e, stackTrace: s);
      emit(
        state.copyWith(
            status: MusicStateStatus.error,
            errorMessage: 'Erro ao buscar musicas'),
      );
    }
  }
}
