import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Data_Kosong extends StatefulWidget {
  const Data_Kosong({Key? key});

  @override
  State<Data_Kosong> createState() => _Data_KosongState();
}

class _Data_KosongState extends State<Data_Kosong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: false,
        titleSpacing: 0.0,
        title:  Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Data Kosong',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
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
                  padding: EdgeInsets.only(top: 180, left: 60,right: 60),
                  child: Text(" Belum Ada Data",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.black,
                    ),),
                ),

                Container(
                  padding: EdgeInsets.only(top: 551, left: 30, right: 30),
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
                    child: Text("Catat Baru",
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
