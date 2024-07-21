import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/Pengawal%20Sawit/materi.dart';
import 'package:kawal_sawit/screens/Pengawal%20Sawit/sertifikat.dart';
class HomePengawalSawit extends StatefulWidget {
  const HomePengawalSawit({Key? key}) : super(key: key);

  @override
  State<HomePengawalSawit> createState() => _HomePengawalSawitState();
}

class _HomePengawalSawitState extends State<HomePengawalSawit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text("Pengawal Sawit",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
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
                  padding: EdgeInsets.only(top: 10, left: 205),
                  child: InkWell (onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Materi()));

                  },child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 117,
                    width: 162,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: InkWell( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sertifikat()));


                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 117,
                    width: 162,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60, left: 70),
                  child: InkWell (onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sertifikat()));


                  },
                  child: Text('Sertifikat',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 12
                    ),),),
                ),
                Container(
                    padding: EdgeInsets.only(top: 60, left: 264),
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Materi()));


                    },child: Text('Materi',
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 12
                      ),),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 150, left: 20),
                  child: Text('Video Pengawal Sawit',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 20, right: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 160,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 370, left: 20),
                  child: Text('Mupuk Terus? Rugi Dong',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
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
                  padding: EdgeInsets.only(top: 417, left: 80),
                  child: Icon(Icons.share,
                  color: Colors.black,),
          ),
                Container(
                  padding: EdgeInsets.only(top: 417, left: 140),
                  child: Text('Bagikan Video',
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
