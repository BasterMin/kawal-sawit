import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/Laporan_kebun.dart';
import 'package:kawal_sawit/screens/catat_panen.dart';
import 'package:kawal_sawit/screens/catat_panen_kirim.dart';

import '../utils/image_dir.dart';
class Catat_Panen_Tampil extends StatefulWidget {
  const Catat_Panen_Tampil({super.key}) ;
  @override
  State<Catat_Panen_Tampil> createState() => _Catat_Panen_TampilState();
}

class _Catat_Panen_TampilState extends State<Catat_Panen_Tampil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Catat Panen',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
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
                  ]
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10 ),
                  child:  Image.asset(ImageDir.KotakEnam),
                ),
                Container(
                  padding: EdgeInsets.only(top: 34, left: 20),
                  child: Text('Pantau Performa Kebun',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 65, left: 20, right: 20),
                  child: Text('Mulai catat panen untuk optimalkan hasil kebun Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 30, right: 30),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>LaporanKebun()));
                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Color(0xff14662B)),
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xff14662B)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(color: Colors.green)
                          )
                      )
                  ),
                    child: Text("Cek Laporan Kebun",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 200, left: 30, right: 30),
                  width: 380,
                  child: ElevatedButton(onPressed: (){

                  }, style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Colors.black)
                      )
                    )
                  ),
                    child: Text("Pilih Kebun",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:260, left: 30, right: 30),
                  child: Text('Priode Panen',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.only (top: 290, left: 30, right: 30),

                  child: Container(

                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 135,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top:300, left: 45, right: 30),
                  child: Text('Nama',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top:300, left: 255, right: 30),
                  child: Text('date',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                    ),),
                ),

                Container(
                  padding: EdgeInsets.only(top:340, left: 45, right: 30),
                  child: Text('Total Berat',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top:380, left: 45, right: 30),
                  child: Text('Harga TBS/Kg',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top:340, left: 255, right: 30),
                  child: Text('Kg',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top:380, left: 45, right: 30),
                  child: Text('Harga TBS/Kg',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top:380, left: 255, right: 30),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 640, left: 30, right: 30, bottom: 10),
                  width: 400,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> CatatPanen()));


                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      backgroundColor: MaterialStateProperty.all<Color>( Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(color: Colors.white)
                          )
                      )
                  ),
                    child: Text("Catat Panen Baru",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
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
