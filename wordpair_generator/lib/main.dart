import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(WordPairGenerator());
}

class WordPairGenerator extends StatefulWidget {
  @override
  _WordPairGeneratorState createState() => _WordPairGeneratorState();
}

class _WordPairGeneratorState extends State<WordPairGenerator> {
  List<String> _adjectives = ['happy', 'sad', 'funny', 'serious', 'angry', 'calm'];
  List<String> _nouns = ['cat', 'dog', 'bird', 'house', 'tree', 'car'];
  Random _random = Random();

  String _generateWordPair() {
    String adjective = _adjectives[_random.nextInt(_adjectives.length)];
    String noun = _nouns[_random.nextInt(_nouns.length)];
    return '$adjective $noun';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordPair Generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('WordPair Generator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _generateWordPair(),
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Generate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
