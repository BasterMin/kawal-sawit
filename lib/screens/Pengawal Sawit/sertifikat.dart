import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Sertifikat extends StatefulWidget {
  const Sertifikat({super.key}) ;
  @override
  State<Sertifikat> createState() => _SertifikatState();
}

class _SertifikatState extends State<Sertifikat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Sertifikat Pengawal Sawit',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),),
        ),
      ),
      backgroundColor: Colors.white,
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
                  padding: EdgeInsets.only(top: 10, left: 20,right: 20),
                  child: InkWell (onTap: (){

                  },child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 137,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 60, left: 155),
                  child: InkWell (onTap: (){

                  },
                    child: Text('Sertifikat',
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12
                      ),),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 410, left: 50, right: 50),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 40,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 360, left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "Anda Belum Mempunyai Sertifikat Webinar Pengawal Sawit",
                      style: GoogleFonts.poppins(
                        color: Colors.red
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 417, left: 90),
                  child: Text('Lihat Cara Mendapatkannya',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
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
