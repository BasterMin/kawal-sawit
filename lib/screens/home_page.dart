import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/screens/Laporan_kebun.dart';
import 'package:kawal_sawit/screens/Pengawal%20Sawit/home_pengawal_sawit.dart';
import 'package:kawal_sawit/screens/agronomis/sewa_agronomis.dart';
import 'package:kawal_sawit/screens/catat_panen_tampil.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_home.dart';
import 'package:kawal_sawit/screens/cpo_international.dart';
import 'package:kawal_sawit/screens/cpo_provinsi.dart';
import 'package:kawal_sawit/screens/daftar_kebun.dart';
import 'package:kawal_sawit/screens/riwayat.dart';
import 'package:kawal_sawit/utils/image_dir.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo, Petani',
          style:  GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          },
              icon:  const  Icon(Icons.add_alert)),
          IconButton(onPressed: () {
            FirebaseAuth.instance.signOut();
          },
              icon: const  Icon(Icons.logout)),
        ],

      ),backgroundColor: Colors.white,

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
                  padding: const EdgeInsets.only(top: 15, left: 10, ),
                  child:  Image.asset(ImageDir.KotakSatu),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> cpo_international())
                      );
                    },
                  child: Text('CPO International',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40,left: 20),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('Rp.',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 59,left: 20),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('date.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 15, left: 208),
                    child:  Image.asset(ImageDir.KotakSatu)
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 217),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> CpoProvinsi())
                      );
                    },
                    child: Text('Harga TBS Disbun Riau',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40,left: 217),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('Rp.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 59,left: 217),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('date.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 100, left: 10),
                    child:  Image.asset(ImageDir.KotakDua)
                ),

                Container(
                  padding: EdgeInsets.only(top: 59,left: 217),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('date.',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 180, left: 10),
                    child:  Image.asset(ImageDir.KotakTiga)
                ),

                Container(
                  padding: EdgeInsets.only(top: 125,left: 20),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('Senilai Rp',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 99,left: 313),
                  child: IconButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Riwayat())
                    );

                  },
                      icon:  const  Icon(Icons.access_time),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 135,left: 306),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Text('Riwayat',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 355,left: 12),
                  child: Text('Catat Kegiatan Kebun',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400,left: 25),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> DaftarKebun())
                      );
                    },
                    child: Image.asset(ImageDir.KebunSaya),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400,left: 120),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Catat_Panen_Tampil()));

                    },
                    child: Image.asset(ImageDir.Panen),
                  ),
                ),
                Container(

                  padding: EdgeInsets.only(top: 398,left: 200,),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>CatataRawatHome()));

                    },
                    child: Image.asset(ImageDir.Rawat),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 400,left: 285,),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Image.asset(ImageDir.Dokumentasi),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 500,left: 12),
                  child: Text('Tingkatkan Produktivitas',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 538,left: 15,),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePengawalSawit()));
                    },
                    child: Image.asset(ImageDir.PengawalSawit),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 538,left: 135,),
                  child:  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SewaAgronomis()));
                    },
                    child: Image.asset(ImageDir.SawitAgronomis),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 540,left: 255,),
                  child:  InkWell(
                    onTap: () {

                    },
                    child: Image.asset(ImageDir.PengawalSanitaria),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 625,left: 12),
                  child: Text('Laporan Kebun',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 665, left: 10),
                    child:  Image.asset(ImageDir.KotakLima)
                ),
                Container(
                  padding: EdgeInsets.only(top: 674,left: 130),
                  child: Text('Pendapatan Bersih',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 693,left: 130),
                  child: Text('Rp.',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 722, left: 10),
                    child:  Image.asset(ImageDir.GarisSatu)
                ),
                Container(
                  padding: EdgeInsets.only(top: 735,left: 30),
                  child: Text('Total Pendapatan',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 762,left: 30),
                  child: Text('Total Pengeluaran',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 735,left: 250),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 762,left: 250),
                  child: Text('Rp',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 811, left: 10),
                  width: 380,

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LaporanKebun()));

                  },style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.1),
                              side: BorderSide(color: Colors.green)
                          )
                      )
                  ),
                    child: Text("Lihat Detail",
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
