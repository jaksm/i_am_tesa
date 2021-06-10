import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// @TODO: use https://pub.dev/packages/assets_audio_player to play "Ja sam T.T!" when user clicks on image
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.indigo,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("I am Tesa Tesanovic"),
          ),
          body: Center(child: TesaImage()),
        ));
  }
}

class TesaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final assetsAudioPlayer = AssetsAudioPlayer();
        assetsAudioPlayer.open(
          Audio('assets/audios/ja_sam_tesa_tesanovic.m4a'),
        );
        assetsAudioPlayer.play();
      },
      child: Container(
        child: Image(
          image: AssetImage('assets/images/tesa.jpeg'),
          fit: BoxFit.contain,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
        ),
      ),
    );
  }
}
