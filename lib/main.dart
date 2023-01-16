import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNum){
    final player = AssetsAudioPlayer();
    player.open(Audio('assets/note$soundNum.wav'));
  }
  Expanded buildKey({required Color color,required int soundNum}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNum);
        },
        child: Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red,soundNum: 1),
              buildKey(color: Colors.orange,soundNum: 2),
              buildKey(color: Colors.yellow,soundNum: 3),
              buildKey(color: Colors.green,soundNum: 4),
              buildKey(color: Colors.teal,soundNum: 5),
              buildKey(color: Colors.blue,soundNum: 6),
              buildKey(color: Colors.purple,soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}


