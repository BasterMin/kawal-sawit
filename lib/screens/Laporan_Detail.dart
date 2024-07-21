import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LaporanDetail extends StatefulWidget {
  const LaporanDetail({super.key}) ;
  @override
  State<LaporanDetail> createState() => _LaporanDetailState();
}

class _LaporanDetailState extends State<LaporanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Laporan Detail',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 140,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 19, left: 101,),
                  child: Text('Pendapatan Bersih Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40, left: 101,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 55, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),

                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey)
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 80, left: 40,),
                  child: Text('Total Pendapatan',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 80, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 110, left: 40,),
                  child: Text('Total Pengeluaran',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 110, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 170, left: 30),
                  child: Text('Total Pendapatan',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 170, left: 240),
                  child: Text('Rp',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 220, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 235, left: 40),
                  child: Text('Total Berat TBS',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 263, left: 40),
                  child: Text('Rata-Rata Harga TBS',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 235, left: 240),
                  child: Text('Kg',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 263, left: 240),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 320, left: 30),
                  child: Text('Total Pengeluaran',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 320, left: 240),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 360, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 370, left: 42),
                  child: Text('Panen',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
            Container(
              padding: EdgeInsets.only(top: 395, left: 42),
              child: Text('Upah Panen',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                ),
              ),
            ),
                Container(
                  padding: EdgeInsets.only(top: 420, left: 42),
                  child: Text('Upah Langsir',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 445, left: 42),
                  child: Text('Biaya Langsir',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 370, left: 240),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 395, left: 240),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 420, left: 240),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 445, left: 240),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
