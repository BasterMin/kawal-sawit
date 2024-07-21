import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_kastrasi.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_pembabatan.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_penunasan.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_penyemprotan.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_sanitasi.dart';
import 'package:kawal_sawit/utils/image_dir.dart';

import 'catat_rawat_pemupukan.dart';
class CatataRawatHome extends StatefulWidget {
  const CatataRawatHome({super.key}) ;

  @override
  State<CatataRawatHome> createState() => _CatataRawat_HomeState();
}

class _CatataRawat_HomeState extends State<CatataRawatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: false,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Catat Rawat',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
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
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Text('Pilih Jenis Perawatan',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Text('Selanjutnya Data Perawatan',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: Text('Jenis Perawatan',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 119, left: 20, right: 20),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>CatatRawatPemupukan()));

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Container(
                      padding: EdgeInsets.only(right: 255),
                      height: 50,
                      child: Image.asset(ImageDir.Pupuk),
                    ),
                ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 131, left: 90 ),
                  child: InkWell (onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>CatatRawatPemupukan()));

                  },
                  child: Text('Pemupukan',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 20, right: 20),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CatatRawatPenunasan()));
                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Container(
                      padding: EdgeInsets.only(right: 255),
                      height: 50,
                      child: Image.asset(ImageDir.Penunasan),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 201, left: 90 ),
                  child: InkWell (onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>CatatRawatPenunasan()));

                  },
                    child: Text('Penunasan',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),),
                ), Container(
                  padding: EdgeInsets.only(top: 260, left: 20, right: 20),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>CatatRawatPenyemprotan()));

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Container(
                      padding: EdgeInsets.only(right: 255),
                      height: 50,
                      child: Image.asset(ImageDir.Spray),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 272, left: 90 ),
                  child: InkWell (onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CatatRawatPenyemprotan()));

                  },
                    child: Text('Penyemprotan',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 330, left: 20, right: 20),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CatatRawatPembabatan()));
                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Container(
                      padding: EdgeInsets.only(right: 255),
                      height: 50,
                      child: Image.asset(ImageDir.Pembabatan),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 340, left: 90 ),
                  child: InkWell (onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CatatRawatPembabatan()));

                  },
                    child: Text('Pembabatan',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 401, left: 20, right: 20),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CatatRawatKastrasi()));
                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Container(
                      padding: EdgeInsets.only(right: 255),
                      height: 50,
                      child: Image.asset(ImageDir.Kastrasi),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 412, left: 90 ),
                  child: InkWell (onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CatatRawatKastrasi()));

                  },
                    child: Text('Kastrasi',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 473, left: 20, right: 20),
                  width: 380,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CatatRawatSanitasi()));
                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Container(
                      padding: EdgeInsets.only(right: 255),
                      height: 50,
                      child: Image.asset(ImageDir.Sanitasi),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 484, left: 90 ),
                  child: InkWell (onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>CatatRawatSanitasi()));

                  },
                    child: Text('Sanitasi',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 640, left: 20, right: 20, bottom: 30,),
                  width: 380,

                  child: ElevatedButton(onPressed: (){

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(color: Colors.black)
                          )
                      )
                  ),
                    child: Text("Batalkan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green),
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

