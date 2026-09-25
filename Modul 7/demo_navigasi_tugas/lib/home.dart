import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D8ACB),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0D8ACB),
        elevation: 0,
        title: const Text(
          "Ini Halaman Home",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 8),

              const Text(
                "Banyak aplikasi memiliki beberapa layar untuk "
                    "menampilkan informasi yang berbeda. Contohnya, "
                    "ada layar produk, dan ketika pengguna mengklik "
                    "produk, akan muncul layar dengan detail produk tersebut.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 35),

              Center(
                child: Container(
                  width: 135,
                  height: 135,
                  padding: const EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/619/619153.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              const Text(
                "Pertama, kita perlu membuat dua halaman atau \"routes\" "
                    "yang ingin kita tampilkan. Selanjutnya, kita gunakan "
                    "perintah Navigator.push() untuk berpindah dari halaman "
                    "pertama ke halaman kedua. Ini seperti kita membuka halaman "
                    "baru. Terakhir, kita bisa kembali dari halaman kedua ke "
                    "halaman pertama menggunakan Navigator.pop(). Seperti "
                    "menutup halaman kedua dan kembali ke halaman pertama.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.25,
                ),
              ),

              const SizedBox(height: 35),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/tujuan',
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF4B36),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),

                  child: const Text(
                    "Ke halaman tujuan ›",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}