import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final player = AudioCache();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          //You can use ListView or a culumn and wrap it inside SingleChildScrollView
          body: GridView.count(
            padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              Animal(
                name: 'bird',
                sound: 'bird',
              ),
              Animal(name: 'cow', sound: 'cow'),
              Animal(
                name: 'cat',
                sound: 'cat',
              ),
              Animal(
                name: 'insect',
                sound: 'bee',
              ),
              Animal(
                name: 'monkey',
                sound: 'monkey',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Animal extends StatelessWidget {
  String name;
  String sound;
  Animal({@required this.name, this.sound});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        player.play('audios/$sound.wav');
      },
      child: Image.asset(
        'assets/images/$name.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
