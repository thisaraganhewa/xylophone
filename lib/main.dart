import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  
  runApp( XylophoneApp() );
  
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(

            children: [
              TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource("note1.wav"));
                  },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note2.wav"));
                },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note3.wav"));
                },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note4.wav"));
                },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note5.wav"));
                },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note6.wav"));
                },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
              TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note7.wav"));
                },
                child: Text(""),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(Size.fromHeight(75.0)),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
