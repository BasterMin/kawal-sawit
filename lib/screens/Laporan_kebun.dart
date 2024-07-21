import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/Laporan_Detail.dart';
class LaporanKebun extends StatefulWidget {
  const LaporanKebun({super.key}) ;

  @override
  State<LaporanKebun> createState() => _LaporanKebunState();
}

class _LaporanKebunState extends State<LaporanKebun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Laporan',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
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
                    height: 65,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 22, left: 60,),
                  child: Text('Analisa Kebun',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                  ),
          ),
                Container(
                  padding: EdgeInsets.only(top: 46, left: 60,),
                  child: Text('Rincian Performa Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 90, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 99, left: 101,),
                  child: Text('Pendapatan Bersih Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 120, left: 101,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 135, left: 15, right: 15),
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
                  padding: EdgeInsets.only(top: 170, left: 40,),
                  child: Text('Total Pendapatan',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 170, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 210, left: 40,),
                  child: Text('Total Pengeluaran',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 210, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 310, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 315, left: 50,),
                  child: Text('Nama',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 335, left: 50,),
                  child: Text('Lokasi',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 350, left: 15, right: 15),
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
                  padding: EdgeInsets.only(top: 210, left: 40,),
                  child: Text('Total Pengeluaran',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 210, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 265, left: 30,),
                  child: Text('Daftar Kebun Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 46, left: 60,),
                  child: Text('Rincian Performa Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(top: 370, left: 40,),
                  child: Text('Pendapatan Bersih',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 370, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400, left: 40,),
                  child: Text('Total Pendapatan',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400, left: 40,),
                  child: Text('Total Pendapatan',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 430, left: 40,),
                  child: Text('Total Pendapatan',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 430, left: 240,),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 315, left: 315),
                  child: InkWell (onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>LaporanDetail()));

                  },
                  child: Icon(Icons.chevron_right,
                  size: 50,
                  color: Colors.black,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
