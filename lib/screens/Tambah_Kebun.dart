import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TambahKebun extends StatefulWidget {
  const TambahKebun({Key? key}) : super(key: key);

  @override
  State<TambahKebun> createState() => _TambahKebunState();
}

class _TambahKebunState extends State<TambahKebun> {
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Tambah Kebun',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
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
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Text('Nama Kebun',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Masukkan Nama Kebun Anda",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 110, left: 30, right: 30),
                  child: Text('Lokasi Kebun',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 145, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Masukkan Lokasi Kebun",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 210, left: 30, right: 30),
                  child: Text('Luas Lahan (ha)',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 250, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Jumlah ha",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 320, left: 30, right: 30),
                  child: Text('Tahun Tanam',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 355, left:30, right: 30),
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
                  padding: EdgeInsets.only(top: 420, left: 30, right: 30),
                  child: Text('Jenis Bibit',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 455, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: " Masukkan Jenis Bibit",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 525, left: 30, right: 30),
                  child: Text('Jenis Tanah',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only (top: 560, left: 60, right: 30),
                  child: Container(

                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 50,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Mineral',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only (top: 560, left: 155, right: 30),
                  child: Container(

                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 50,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Mineral Berpasir',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only (top: 620, left: 60, right: 10),
                  child: Container(

                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 50,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Mineral Vokanik',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only (top: 620, left: 210, right: 10),
                  child: Container(

                    padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 50,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('Gambut',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 685, left: 30, right: 30),
                  child: Text('Jumlah Pokok/Hektar',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 725, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: " Jumlah Pokok",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 790, left: 30, right: 30, bottom: 10),
                  width: 410,
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
                    child: Text("Tambahkan Kebun",
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
