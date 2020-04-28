import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

void sound(int i){
  final player = AudioCache();
  player.play('note$i.wav');
}

Expanded buildWig({Color colors,int num}){
  return Expanded(
    child: FlatButton(
      color: colors,
      onPressed: (){
        sound(num);
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildWig(colors: Colors.red,num: 1),
              buildWig(colors: Colors.blue,num: 2),
              buildWig(colors: Colors.green,num: 3),
              buildWig(colors: Colors.orange,num: 4),
              buildWig(colors: Colors.purple,num: 5),
              buildWig(colors: Colors.teal,num: 6),
              buildWig(colors: Colors.yellow,num: 7),
          ],
        ),
        ),
      ),

    );
  }
}

