import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/catat_panen_kirim.dart';
class CatatPanen extends StatefulWidget {
  const CatatPanen({super.key}) ;

  @override
  State<CatatPanen> createState() => _CatatPanenState();
}

class _CatatPanenState extends State<CatatPanen> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing:  0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3, 0, 0),
          child: Text('Catat Panen',
          style: GoogleFonts.poppins(
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
                    padding: EdgeInsets.all(30,),
                    child: Text("Hasil & Upah Panen",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 80, left: 30, right: 30),
                    child: Text('Tanggal Panen',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 120, left:30, right: 30),
                      child: TextField(
                        controller: _dateController,
                        decoration: InputDecoration(
                          labelText: 'Tanggal',
                          filled: true,
                          prefixIcon: Icon(Icons.calendar_today),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4)
                            ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                          ),
                        ),
                        readOnly: true,
                        onTap: () {
                          _selectDate();
                        },
                      ),
                    ),
                  Container(
                    padding: EdgeInsets.only(top: 195, left: 30, right: 30),
                    child: Text('Berat Total TBS (Kg)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 235, left: 30, right: 30),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Masukkan Total Berat TBS",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 310, left: 30, right: 30),
                    child: Text('Harga TBS(Rp/Kg)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 350, left: 30, right: 30),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Harga TBS/ (kg)",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 425, left: 30, right: 30),
                    child: Text('Upah Panen',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 470, left: 30, right: 30),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Rp",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 551, left: 30, right: 205),
                    width: 380,

                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> CatatPanen()));

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
                    padding: EdgeInsets.only(top: 551, left: 205, right: 15),
                    width: 380,

                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Catat_Panen_Kirim()));


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
                      child: Text("Selanjutnya",
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
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1945),
        lastDate: DateTime(2045),
    );
    if (_picked != null){
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }

}

