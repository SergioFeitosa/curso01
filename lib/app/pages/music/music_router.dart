import 'package:curso01/app/pages/music/music_controller.dart';
import 'package:curso01/app/pages/music/music_page.dart';
import 'package:curso01/app/repositories/musics/musics_repository.dart';
import 'package:curso01/app/repositories/musics/musics_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MusicRouter {
  MusicRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<MusicsRepository>(
            create: (context) => MusicsRepositoryImpl(
              dio: context.read(),
            ),
          ),
          Provider(
            create: (context) => MusicController(context.read()),
          ),
        ],
        child: const MusicPage(),
      );
}
