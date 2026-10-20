import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // Wajib dipanggil jika ada inisialisasi async sebelum runApp
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi locale bahasa Indonesia untuk intl
  await initializeDateFormatting('id_ID', null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Plugin',
      debugShowCheckedModeBanner: false,

      // ==========================================
      // INI BAGIAN 3.2: MENGATUR THEME GOOGLE FONTS
      // ==========================================
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      // ==========================================

      home: const HalamanTanggal(),
    );
  }
}

class HalamanTanggal extends StatelessWidget {
  const HalamanTanggal({super.key});

  @override
  Widget build(BuildContext context) {
    final formatTanggal = DateFormat(
      'EEEE, d MMMM yyyy',
      'id_ID',
    ).format(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum Minggu 7')),
      body: Center(
        child: Text(
          formatTanggal,
          style: const TextStyle(
            fontSize: 24,
          ), // Font ini akan otomatis jadi Poppins
        ),
      ),
    );
  }
}
