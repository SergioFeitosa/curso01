import 'package:curso01/app/models/music_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MusicDetailPage extends StatelessWidget {
  final MusicModel music;
  const MusicDetailPage({super.key, required this.music});

  _launchURLBrowser() async {
    const url = 'https://flutterdevs.com/';
    if (await canLaunchUrlString(
        'https://open.spotify.com/track/1CDItzs1Ud0u9PDKdJgrio?si=7e9ad67363204eea')) {
      await _launchURLBrowser();
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                _launchURLBrowser();
              },
              child: const Text('Spotify'))
        ],
      ),
    );
  }
}
