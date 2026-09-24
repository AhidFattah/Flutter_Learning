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
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'ListView',
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
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          listTile(
            Colors.blue,
            Colors.white,
            'Boys',
            'Daftar siswa laki-laki',
            'assets/icon/boy.png',
          ),
          listTile(
            Colors.green,
            Colors.white,
            'Timetable',
            'Jadwal kegiatan',
            'assets/icon/timetable.png',
          ),
          listTile(
            Colors.orange,
            Colors.white,
            'Homeschooling',
            'Pembelajaran dari rumah',
            'assets/icon/homeschooling.png',
          ),
          listTile(
            Colors.red,
            Colors.white,
            'Clipboard',
            'Daftar tugas',
            'assets/icon/clipboard.png',
          ),
          listTile(
            Colors.purple,
            Colors.white,
            'Marks',
            'Nilai siswa',
            'assets/icon/marks.png',
          ),
          listTile(
            Colors.teal,
            Colors.white,
            'Pencil',
            'Alat untuk menulis',
            'assets/icon/pencil.png',
          ),
        ],
      ),
    );
  }
}

Widget listTile(
    Color warna,
    Color warnaAvatar,
    String judul,
    String subjudul,
    String gambar,
    ) {
  return Container(
    margin: const EdgeInsets.only(
      bottom: 8,
    ),
    decoration: BoxDecoration(
      color: warna,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      title: Text(
        judul,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subjudul,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: warnaAvatar,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            gambar,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.star,
        color: Colors.white,
      ),
    ),
  );
}