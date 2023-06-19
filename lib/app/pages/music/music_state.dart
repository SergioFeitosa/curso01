// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:curso01/app/models/music_model.dart';

part 'music_state.g.dart';

@match
enum MusicStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class MusicState extends Equatable {
  final MusicStateStatus status;
  final List<MusicModel> musics;
  final String? errorMessage;
  const MusicState({
    required this.status,
    required this.musics,
    this.errorMessage,
  });

  const MusicState.initial()
      : status = MusicStateStatus.initial,
        musics = const [],
        errorMessage = null;

  @override
  List<Object?> get props => [status, musics];

  MusicState copyWith({
    MusicStateStatus? status,
    List<MusicModel>? musics,
    String? errorMessage,
  }) {
    return MusicState(
      status: status ?? this.status,
      musics: musics ?? this.musics,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
