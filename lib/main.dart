import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

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
        body: Center(child: Text(adjectives.first)),
      ),
    );
  }
}
