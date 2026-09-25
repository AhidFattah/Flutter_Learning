import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4933),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFF4933),
        elevation: 0,
        title: const Text(
          "Ini Halaman Tujuan",
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
                "Untuk berpindah ke halaman baru, gunakan metode "
                    "Navigator.push(). Metode push() akan menambahkan "
                    "Route ke dalam tumpukan Route yang dikelola oleh "
                    "Navigator. Route dapat dibuat secara kostum atau "
                    "menggunakan MaterialPageRoute, yang memiliki animasi "
                    "transisi sesuai dengan platform yang digunakan.",
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
                    "https://cdn-icons-png.flaticon.com/512/4359/4359963.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              const Text(
                "Untuk menutup halaman kedua dan kembali ke "
                    "halaman pertama, gunakan metode Navigator.pop(). "
                    "Metode pop() akan menghapus Route yang paling atas "
                    "dari tumpukan Route yang dikelola oleh Navigator.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 35),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF008FD5),
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
                    "‹  Kembali ke home",
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