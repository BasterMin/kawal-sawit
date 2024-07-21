import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/agronomis/riwayat_pesanan.dart';
class SewaAgronomis extends StatefulWidget {
  const SewaAgronomis({Key? key}) : super(key: key);

  @override
  State<SewaAgronomis> createState() => _SewaAgronomisState();
}

class _SewaAgronomisState extends State<SewaAgronomis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Sewa Agronomis',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>RiwayatPesanan()));

                  },child: Container(
                    padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                    height: 60,


                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 40),
                  child: Text('Riwayat Pemesanan',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45, left: 40),
                  child: Text('Daftar Pemesanan Pengawal Sawit Anda',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 85, left: 20),
                  child: Text('Layanan Sewa Agronimis',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 120, left: 20,right: 20),
                  child: InkWell (onTap: (){

                  },child: Container(
                    padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                    height: 105,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top:120, left: 30),
                  child: Icon(Icons.image,
                  size: 100,),
                ),
                Container(
                  padding: EdgeInsets.only(top: 130, left: 145),
                  child: Text('Tanya Agronimis',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 160, left: 145),
                  child: Text('note',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 190, left: 145),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 240, left: 20, right: 20),
                  child: Text('Keunggulan Premiun Sewa Agronomis',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 280, left: 20,right: 20),
                  child: InkWell (onTap: (){

                  },child: Container(
                    padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                    height: 375,

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(30)
                    ),
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
