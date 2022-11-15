// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("assets/images/sicipelogo.png",width: 120,),
          SizedBox(height: 10),
          Text('SICIPE', 
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
          // SizedBox(height: 10),
          // Text(
          //   'Welcome back, you\'ve been missed!',
          //   style: TextStyle(
          //     fontSize: 20,
          //   ),
          // ),
          SizedBox(height: 20),
               Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                Text(
                  'Nama Pengguna',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16
                  ),
                ),
              ],
            ),
          SizedBox(height: 10),
          // username
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Masukkan Nama Pengguna',
              ),
            ),
          ),
          ),
          ),
          SizedBox(height: 10),
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16
                  ),
                ),
              ],
            ),
               SizedBox(height: 10),
          // password
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Masukkan Kata Sandi',
                suffixIcon: Icon(Icons.remove_red_eye)
              ),
            ),
          ),
          ),
          ),
          SizedBox(height: 10),
          // sign in button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ),
            ),
          ),
            SizedBox(height: 10),
            
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum Memiliki Akun?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 12
                  ),
                ),
                   SizedBox(width: 5),
                  Text(
                  'Daftar Sekarang.',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold, 
                    fontSize: 12
                  ),  
                ),
                       SizedBox(width: 30),
                   Text(
                  'Lupa Kata Sandi?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 12
                  ),
                ),
              ],
            )
        ]),

      ),
    );
  }
}

