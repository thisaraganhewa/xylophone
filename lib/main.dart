import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  
  runApp( const XylophoneApp() );
  
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {


  Future<void> playSound( int number ) async {
    final player = AudioPlayer();
    await player.play(AssetSource("note$number.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.red),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.orange),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.yellow),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.green),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.teal),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.blue),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll<Color>(Colors.purple),
                  fixedSize: WidgetStateProperty.all<Size>(const Size.fromHeight(118.0)),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),

                ),
                child: const Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


