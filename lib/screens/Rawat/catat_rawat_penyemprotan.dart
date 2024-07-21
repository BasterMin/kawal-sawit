import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CatatRawatPenyemprotan extends StatefulWidget {
  const CatatRawatPenyemprotan({Key? key}) : super(key: key);

  @override
  State<CatatRawatPenyemprotan> createState() => _CatatRawatPenyemprotanState();
}

class _CatatRawatPenyemprotanState extends State<CatatRawatPenyemprotan> {
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text('Catat Rawat',
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
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Text('Perawatan Penyemprotan',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green,
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Text('Selanjutnya Selesai',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 78, left: 20, right: 20),
                  child: Text('Tanggal Perawatan',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 120, left:20, right: 20),
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
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    readOnly: true,
                    onTap: () {
                      _selectDate();
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 20, right: 20),
                  child: Text('Jumlah (ha)',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 230, left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Total luas lahan yang disemprot",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 300, left: 20, right: 20),
                  child: Text('Total Biaya Perawatan',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 340, left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Rp",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 405, left: 20, right: 20),
                  child: Text('Total Biaya Perawatan Termasuk Upah & Material',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 430, left: 20, right: 20),
                  child: Text('Total Biaya Lainnya',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 470, left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Rp",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 551, left: 30, right: 205, bottom: 20),
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
                  padding: EdgeInsets.only(top: 551, left: 205, right: 15, bottom: 20),
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
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1945),
      lastDate: DateTime(2045),
    );
    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}