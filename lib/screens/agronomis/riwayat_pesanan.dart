import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class RiwayatPesanan extends StatefulWidget {
  const RiwayatPesanan({Key? key}) : super(key: key);

  @override
  State<RiwayatPesanan> createState() => _RiwayatPesananState();
}

class _RiwayatPesananState extends State<RiwayatPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Riwayat Pesanan',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
