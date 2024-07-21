import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Materi extends StatefulWidget {
  const Materi({Key? key}) : super(key: key);

  @override
  State<Materi> createState() => _MateriState();
}

class _MateriState extends State<Materi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Materi Pengawal sawit',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
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
                  padding: EdgeInsets.only(top: 10, left: 30,right: 40),
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
                  padding: EdgeInsets.only(top: 8, left: 30),

                  child: Icon(Icons.image,
                  size: 140,),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 185),
                  child: InkWell (onTap: (){

                  },
                    child: Text('Judul Materi',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                      ),),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 60, left: 185),
                  child: InkWell (onTap: (){

                  },
                    child: Text('Date',
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12
                      ),),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 90, left: 168, ),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 30,
                    width: 125,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 92, left: 308),
                  child: Icon(Icons.download,
                  size: 30),

                ),


                Container(
                  padding: EdgeInsets.only(top: 95, left: 180),
                  child: Text('Bagikan Materi',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
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
