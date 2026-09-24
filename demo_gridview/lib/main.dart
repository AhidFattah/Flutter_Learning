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
      title: 'GridView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'GridView',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          _kotak(
            Colors.blue,
            'Boys',
            'assets/icon/student.png',
          ),
          _kotak(
            Colors.green,
            'Timetable',
            'assets/icon/timetable.png',
          ),
          _kotak(
            Colors.orange,
            'Homeschooling',
            'assets/icon/homeschooling.png',
          ),
          _kotak(
            Colors.red,
            'Clipboard',
            'assets/icon/clipboard.png',
          ),
          _kotak(
            Colors.purple,
            'Marks',
            'assets/icon/marks.png',
          ),
          _kotak(
            Colors.teal,
            'Pencil',
            'assets/icon/pencil 2.png',
          ),
        ],
      ),
    );
  }
}

Widget _kotak(
    Color warna,
    String judul,
    String gambar,
    ) {
  return Container(
    decoration: BoxDecoration(
      color: warna,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          gambar,
          width: 80,
          height: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          judul,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}