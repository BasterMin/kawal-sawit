import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kawal_sawit/provider/auth_provider.dart';
import 'package:kawal_sawit/screens/Data_Kosong.dart';
import 'package:kawal_sawit/screens/Laporan_Detail.dart';
import 'package:kawal_sawit/screens/Laporan_kebun.dart';
import 'package:kawal_sawit/screens/Pengawal%20Sawit/home_pengawal_sawit.dart';
import 'package:kawal_sawit/screens/Pengawal%20Sawit/materi.dart';
import 'package:kawal_sawit/screens/Pengawal%20Sawit/sertifikat.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_penunasan.dart';
import 'package:kawal_sawit/screens/Tambah_Kebun.dart';
import 'package:kawal_sawit/screens/agronomis/sewa_agronomis.dart';
import 'package:kawal_sawit/screens/auth/login.dart';
import 'package:kawal_sawit/screens/catat_panen.dart';
import 'package:kawal_sawit/screens/catat_panen_kirim.dart';
import 'package:kawal_sawit/screens/catat_panen_tampil.dart';
import 'package:kawal_sawit/screens/Rawat/catat_rawat_home.dart';
import 'package:kawal_sawit/screens/catat_rawat_pemupukan.dart';
import 'package:kawal_sawit/screens/cpo_international.dart';
import 'package:kawal_sawit/screens/daftar_kebun.dart';
import 'package:kawal_sawit/screens/home_page.dart';
import 'package:kawal_sawit/screens/riwayat.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> AuthLogg()),
        ],
    child:  MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (ctx,snapshot){
              if(snapshot.hasData){
                return const HomePage();
              }
              return const LoginScreen();
            })
    ),
    );
  }
}
