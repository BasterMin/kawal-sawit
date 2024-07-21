import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Catat_Panen_Kirim extends StatefulWidget {
  const Catat_Panen_Kirim({super.key});
  @override
  State<Catat_Panen_Kirim> createState() => _Catat_Panen_KirimState();
}

class _Catat_Panen_KirimState extends State<Catat_Panen_Kirim> {
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
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
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
                  padding: EdgeInsets.all(30),
                  child: Text("Informasi Tambahan",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 65, left: 30,right: 30),
                  child: Text("Selanjutnya Selesai",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 95, left: 30, right: 10),
                  child: Text("Kepda Siapa Anda Menjual Hasil Panen?",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                Container(
                    padding: const EdgeInsets.only (top: 135, left: 30, right: 30),
                    child: Container(

                      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                      height: 50,
                      decoration: BoxDecoration(

                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text('Pengepul',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        ),
                    ),
                ),
            Container(
              padding: const EdgeInsets.only (top: 135, left: 134, right: 30),
              child: Container(

                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                height: 50,
                decoration: BoxDecoration(

                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text('Kelompok Tani',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              ),
                Container(
                  padding: const EdgeInsets.only (top: 135, left: 275, right: 10),
                  child: Container(

                    padding: EdgeInsets.only(top: 15, left: 20, right: 10),
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Pabrik',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
            padding: EdgeInsets.only(top: 205, left: 30, right: 10),
            child: Text("Nama Pabrik",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),
                Container(
                  padding: EdgeInsets.only(top: 245, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Nama Pabrik",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 315, left: 30, right: 10),
                  child: Text("Plat Nomor Truk",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 355, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Plat Nomor Truk",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 451, left: 30, right: 205),
                  width: 380,

                  child: ElevatedButton(onPressed: (){

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Color(0xfffffffff)),
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xffffffff)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(color: Colors.white)
                          )
                      )
                  ),
                    child: Text("Kembali",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 451, left: 205, right: 15),
                  width: 380,

                  child: ElevatedButton(onPressed: (){


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
                    child: Text("Kirim",
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
