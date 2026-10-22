
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '/model/game.dart';

Future<List<Game>> fetchGames() async {
  final url = Uri.https(
    'www.freetogame.com',
    '/api/games',
  );

  try {
    final response = await http
        .get(url)
        .timeout(const Duration(seconds: 20));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData =
      json.decode(response.body);

      return jsonData
          .map((item) => Game.fromJson(item))
          .toList();
    }

    throw Exception(
      'Gagal mengambil daftar game. '
          'HTTP ${response.statusCode}',
    );
  } on SocketException {
    throw Exception(
      'Tidak ada koneksi ke server. '
          'Periksa internet dan DNS emulator.',
    );
  } on TimeoutException {
    throw Exception(
      'Koneksi ke server terlalu lama. '
          'Coba lagi.',
    );
  } on FormatException {
    throw Exception(
      'Format data JSON dari server tidak valid.',
    );
  }
}

Future<Map<String, dynamic>> fetchDataFromAPI(
    int idGame,
    ) async {
  final url = Uri.https(
    'www.freetogame.com',
    '/api/game',
    {'id': idGame.toString()},
  );

  try {
    final response = await http
        .get(url)
        .timeout(const Duration(seconds: 20));

    if (response.statusCode == 200) {
      final dynamic jsonData =
      json.decode(response.body);

      if (jsonData is Map<String, dynamic>) {
        return jsonData;
      }

      throw Exception(
        'Format detail game tidak valid.',
      );
    }

    throw Exception(
      'Gagal mengambil detail game. '
          'HTTP ${response.statusCode}',
    );
  } on SocketException {
    throw Exception(
      'Tidak ada koneksi ke server. '
          'Periksa internet dan DNS emulator.',
    );
  } on TimeoutException {
    throw Exception(
      'Koneksi ke server terlalu lama.',
    );
  } on FormatException {
    throw Exception(
      'Format JSON detail game tidak valid.',
    );
  }
}