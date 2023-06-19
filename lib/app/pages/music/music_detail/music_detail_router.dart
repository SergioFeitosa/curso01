import 'package:curso01/app/pages/music/music_detail/music_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MusicDetailRouter {
  MusicDetailRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => Object(),
          )
        ],
        builder: (context, child) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return MusicDetailPage(music: args['music']);
        },
      );
}
