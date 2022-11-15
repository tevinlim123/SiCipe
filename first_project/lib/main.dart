import 'dart:async';
import 'package:first_project/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 3),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														LoginPage()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
	color: Colors.white,
	child: Column(children : [    SizedBox(height: 150),Image.asset("assets/images/sicipelogo.png",width: 110),
  SizedBox(height: 30),
  Text('SICIPE',
  style: GoogleFonts.roboto(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 50.0,
    decoration: TextDecoration.none
  ),),
  Text('Find and Share Your Recipes',
  style: GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 16.0,
    decoration: TextDecoration.none
  ),),
      SizedBox(height: 60),
    CircularProgressIndicator(),
    SizedBox(height: 170),
    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.deepOrange,),
              child: Center(
                child: Text(
                  'version 1.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    decoration: TextDecoration.none
                  ),
                )
              ),
            ),
          ),
  ]),

	);
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(title:Text("GeeksForGeeks")),
	body: Center(
		child:Text("Home page",textScaleFactor: 2,)
	),
	);
}
}


