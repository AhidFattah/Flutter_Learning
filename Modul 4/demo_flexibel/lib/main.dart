import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control Bar Pemutar Musik',
      theme: ThemeData.dark(),
      home: const MusicPlayerPage(),
    );
  }
}

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Music Player'), centerTitle: true),
      body: const Center(
        child: Text('Now Playing', style: TextStyle(fontSize: 24)),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        color: Colors.black54,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: null,
                icon: const Icon(Icons.shuffle, color: Colors.white),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: null,
                icon: const Icon(Icons.skip_previous, color: Colors.white),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: IconButton(
                onPressed: null,
                iconSize: 48,
                icon: const Icon(Icons.play_circle_fill, color: Colors.white),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: null,
                icon: const Icon(Icons.skip_next, color: Colors.white),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: null,
                icon: const Icon(Icons.repeat, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
