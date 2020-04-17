import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color , int soundNumber}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

//Expanded(
//child: FlatButton(
//onPressed: () {
//playSound(2);
//},
//color: Colors.orange,),
//),
//Expanded(
//child: FlatButton(
//onPressed: () {
//playSound(3);
//},
//color: Colors.yellow,),
//),
//Expanded(
//child: FlatButton(
//onPressed: () {
//playSound(4);
//},
//color: Colors.green,),
//),
//Expanded(
//child: FlatButton(
//onPressed: () {
//playSound(5);
//},
//color: Colors.teal,),
//),
//Expanded(
//child: FlatButton(
//onPressed: () {
//playSound(6);
//},
//color: Colors.blue,),
//),
//Expanded(
//child: FlatButton(
//onPressed: () {
//playSound(7);
//},
//color: Colors.purple,),
//),