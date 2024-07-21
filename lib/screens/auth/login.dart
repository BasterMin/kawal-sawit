import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_sawit/provider/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../widget/textfield/textfield_email_widget.dart';
import '../../widget/textfield/textfield_pass_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var loadAuth = Provider.of<AuthLogg>(context);
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 50, left: 65),
                      child: Text(" Kawal Sawit",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                      ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Form(
                        key: loadAuth.form,
                        child: Column(
                          children: [
                            Text(loadAuth.islogin ? "Login Akun" : "Register Akun",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20, color: Colors.brown),),
                            const SizedBox( height: 15,),
                            TextfieldEmailWidget(controller: email),
                            const SizedBox( height: 15,),
                            TextfieldPassWidget(controller: password),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              height: 60,
                              width: 300,
                              child: ElevatedButton(onPressed: (){
                                loadAuth.submit();
                              },style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff0b7522)
                              ),
                                child: Text(loadAuth.islogin ? "Log-In" : "Register",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            TextButton(onPressed: (){
                              setState(() {
                                loadAuth.islogin = !loadAuth.islogin;
                              });
                            }, child: Text(loadAuth.islogin ? "Buat Akun Baru" : "Sudah Punya Akun",
                            style: TextStyle(
                              fontSize: 20,
                            ),),),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
