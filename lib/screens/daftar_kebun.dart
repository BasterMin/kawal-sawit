import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/Tambah_Kebun.dart';
import 'package:kawal_sawit/screens/catat_panen.dart';

import '../utils/image_dir.dart';
class DaftarKebun extends StatefulWidget {
  const DaftarKebun({super.key});
  @override
  State<DaftarKebun> createState() => _DaftarKebunState();
}

class _DaftarKebunState extends State<DaftarKebun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title:  Transform(
          // you can forcefully translate values left side using Transform
          transform:  Matrix4.translationValues(-3.0, 0.0, 0.0),
          child: Text(
            "Daftar Kebun",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
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
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10 ),
                  child:  Image.asset(ImageDir.KotakEnam),
                ),

                Container(
                  padding: EdgeInsets.only(top: 34, left: 20),
                  child: Text('Optimalkan Kebun Anda',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 65, left: 20, right: 20),
                  child: Text('Yuk, catat penjualan panen dan perawatan kebun untuk mengetahui performa kebun Anda.',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 111, left: 25, right: 205),
                  width: 380,

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> CatatPanen()));

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
                    child: Text("Catat Panen",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 111, left: 205, right: 15),
                  width: 380,

                  child: ElevatedButton(onPressed: (){

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(color: Colors.black54)
                          )
                      )
                  ),
                    child: Text("Catat Rawat",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff14662B)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 641, left: 10),
                  width: 380,

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> TambahKebun()));

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff14662B)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.1),
                              side: BorderSide(color: Color(0xff14662B))
                          )
                      )
                  ),
                    child: Text("Tambah Kebun Baru",
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
