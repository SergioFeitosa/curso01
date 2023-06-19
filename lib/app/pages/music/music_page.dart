import 'package:curso01/app/core/ui/base_state/base_state.dart';
import 'package:curso01/app/core/ui/widgets/delivery_appbar.dart';
import 'package:curso01/app/pages/music/music_controller.dart';
import 'package:curso01/app/pages/music/music_state.dart';
import 'package:curso01/app/pages/music/widgets/music_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends BaseState<MusicPage, MusicController> {
  @override
  void onReady() {
    controller.loadMusics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DeliveryAppbar(),
        body: BlocConsumer<MusicController, MusicState>(
          listener: (context, state) {
            state.status.matchAny(
                any: () => hideLoader(),
                loading: () => showLoader(),
                error: () {
                  hideLoader();
                  showError(state.errorMessage ?? 'Erro de acesso ao produto');
                });
          },
          buildWhen: (previous, current) => current.status.matchAny(
            any: () => false,
            initial: () => true,
            loaded: () => true,
          ),
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.musics.length,
                    itemBuilder: (context, index) {
                      final music = state.musics[index];
                      return MusicTile(
                        music: music,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}
