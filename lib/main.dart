import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloApp());
}
class XyloApp extends StatelessWidget {
  const XyloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache p = AudioCache(prefix: 'assets/');

    Widget noteXylo(Color couleur, String nom_de_fichier){
      return Expanded(
        child: TextButton(
          onPressed: () {
            p.play(nom_de_fichier);
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(couleur)),
          child: Container(
            color: couleur,
          ),
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              noteXylo(Colors.red,'note1.wav'),
              noteXylo(Colors.orange,'note2.wav'),
              noteXylo(Colors.yellow, 'note3.wav'),
              noteXylo(Colors.green, 'note4.wav'),
              noteXylo(Colors.teal, 'note5.wav'),
              noteXylo(Colors.blue, 'note6.wav'),
              noteXylo(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      )
    );
  }
}
