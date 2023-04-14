import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsappalpha1/home.dart';
import 'package:utsappalpha1/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, appBarTheme: AppBarTheme(elevation: 0)),
      home: Page1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                Text(
                  "Your Future",
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "Furniture",
                  style: GoogleFonts.poppins(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 100,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
                  padding: EdgeInsets.fromLTRB(10, 60, 10, 100),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Text(
                        "Login First",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              labelText: "Username",
                              labelStyle: TextStyle(color: Colors.grey))),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.grey))),
                    ],
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainWrapper()));
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 500, 20, 0),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
