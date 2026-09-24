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
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row and Column'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarna(
                    warna: Colors.blue,
                    teks: 'Biru',
                  ),
                  SizedBox(width: 10),
                  KotakWarna(
                    warna: Colors.green,
                    teks: 'Hijau',
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakWarna(
                    warna: Colors.orange,
                    teks: 'Oranye',
                  ),
                  SizedBox(width: 10),
                  KotakWarna(
                    warna: Colors.purple,
                    teks: 'Ungu',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakWarna({
    super.key,
    required this.warna,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 50,
          ),
          const SizedBox(height: 10),
          Text(
            teks,
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
}