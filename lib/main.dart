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
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Pad(number: 1, color: Colors.red),
              Pad(number: 2, color: Colors.orange),
              Pad(number: 3, color: Colors.yellow),
              Pad(number: 4, color: Colors.green),
              Pad(number: 5, color: Colors.teal),
              Pad(number: 6, color: Colors.blue),
              Pad(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class Pad extends StatefulWidget {

  final int number;
  final Color color;

  const Pad({
    super.key,
    required this.number,
    required this.color
  });


  @override
  State<Pad> createState() {
    return _PadState();
  }
}

class _PadState extends State<Pad> {

  late final int number;
  late final Color color;

  _PadState();

  @override
  void initState(){
    super.initState();
    number = widget.number;
    color = widget.color;
  }



  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource("note$number.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound();
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(color),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))),
      
        ),
        child: const Text(""),
      ),
    );
  }
}

