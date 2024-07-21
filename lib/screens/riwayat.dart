import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});
  @override
  State<Riwayat> createState() => _RiwayatState();
}

bool _jns = false;

List<String> options = [
  'Option 0',
  'Option 1',
  'Option 2',
  'Option 3',
  'Option 4',
  'Option 5',
  'Option 6',
  'Option 7',
  'Option 8',
  'Option 9',
  'Option 10',
  'Option 11'
];

class _RiwayatState extends State<Riwayat> {
  String? currentOption = options[0];
  String _selected = '';
  String _jns = "Semua Jenis";
  String _sswk ='';
  String _jkw = "Semua Tanggal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-3.0, 0, 0),
          child: Text(
            'Riwayat',
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal),
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

                    ]),
                Padding(
                  padding: const EdgeInsets.only (top: 15, left: 40, right: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 1, left: 20, right: 80),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(28)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only (top: 80, left: 40, right: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 1, left: 20, right: 80),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(28)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 26, left: 60),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 18, right: 260),
                                      child: Text("Jenis",
                                        style: GoogleFonts.poppins(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    RadioListTile(
                                        title: Text("Semua Jenis"),
                                        value: options[1],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Semua Jenis";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Pencapaian Program"),
                                        value: options[2],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = 'Pencapaian Program';
                                            _jns = "";
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title:
                                            Text("Mesin Penghasil Point Sawit"),
                                        value: options[3],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected =
                                                "Mensin Penghasil Point Sawit";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Pembelian"),
                                        value: options[4],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Pembelian";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Transfer Sawit Point"),
                                        value: options[5],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Transfer Sawit Point";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Pengembalian Sawit Point"),
                                        value: options[6],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected =
                                                "Pengembalian Sawit Point";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Aktifitas"),
                                        value: options[7],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Aktifitas";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Undang Teman"),
                                        value: options[8],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Undang Teman";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Mendaftarkan Pengguna"),
                                        value: options[9],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Mendaftarkan Pengguna";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Lainnya"),
                                        value: options[9],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _selected = "Lainnya";
                                            _jns = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    Container(
                                      padding: EdgeInsets.only(top: 2, left: 10, bottom: 30),
                                      width: 380,

                                      child: ElevatedButton(onPressed: (){

                                      },style: ButtonStyle(
                                          foregroundColor: MaterialStateProperty.all<Color>(Color(0xff064808)),
                                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff064808)),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5),
                                                  side: BorderSide(color: Color(
                                                      0xff064808))
                                              )
                                          )
                                      ),
                                        child: Text("Terapkan",
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
                            );
                          });
                    },
                    child: Column(
                      children: <Widget>[
                        Text(_jns.isEmpty ? _selected : _jns,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),),
                      ],

                    ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 92, left: 60),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 7, right: 75),
                                      child: Text("Pilih Rentang Waktu",
                                        style: GoogleFonts.poppins(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                    RadioListTile(
                                        title: Text("Semua Tanggal"),
                                        value: options[1],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _sswk = "Semua Tanggal";
                                            _jkw = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("30 Hari Terakhir"),
                                        value: options[2],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _sswk = '30 Hari Terakhir';
                                            _jkw = "";
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title:
                                        Text("90 Hari Terakhir"),
                                        value: options[3],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _sswk =
                                            "90 Hari Terakhir";
                                            _jkw = '';
                                            currentOption = value.toString();
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text("Pilih Rentang Waktu"),
                                        value: options[4],
                                        groupValue: currentOption,
                                        onChanged: (value) {
                                          Navigator.of(context).pop();
                                          setState(() {
                                            _sswk = "Pilih Rentang Waktu";
                                            _jkw = '';
                                            currentOption = value.toString();
                                          });
                                        }),

                                    Container(
                                      padding: EdgeInsets.only(top: 2, left: 10, bottom: 30),
                                      width: 380,

                                      child: ElevatedButton(onPressed: (){

                                      },style: ButtonStyle(
                                          foregroundColor: MaterialStateProperty.all<Color>(Color(0xff064808)),
                                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff064808)),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5),
                                                  side: BorderSide(color: Color(
                                                      0xff064808))
                                              )
                                          )
                                      ),
                                        child: Text("Terapkan",
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
                            );
                          });
                    },
                    child: Column(
                      children: <Widget>[
                        Text(_jkw.isEmpty ? _sswk : _jkw,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                          ),),
                      ],

                    ),

                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 160,left: 45, right: 10),
                  child: Text('Menambahkan Data Bisnis',
                    style: GoogleFonts.poppins(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 205,left: 45, right: 10),
                  child: Text('Kebun',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 250,left: 45, right: 10),
                  child: Text('date',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
            Container(
              padding: EdgeInsets.only(top: 205,left: 290, right: 10),
              child: Text('Reting',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
