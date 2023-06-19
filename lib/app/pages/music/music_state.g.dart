// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension MusicStateStatusMatch on MusicStateStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() loading,
      required T Function() loaded,
      required T Function() error}) {
    final v = this;
    if (v == MusicStateStatus.initial) {
      return initial();
    }

    if (v == MusicStateStatus.loading) {
      return loading();
    }

    if (v == MusicStateStatus.loaded) {
      return loaded();
    }

    if (v == MusicStateStatus.error) {
      return error();
    }

    throw Exception('MusicStateStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? loading,
      T Function()? loaded,
      T Function()? error}) {
    final v = this;
    if (v == MusicStateStatus.initial && initial != null) {
      return initial();
    }

    if (v == MusicStateStatus.loading && loading != null) {
      return loading();
    }

    if (v == MusicStateStatus.loaded && loaded != null) {
      return loaded();
    }

    if (v == MusicStateStatus.error && error != null) {
      return error();
    }

    return any();
  }
}
