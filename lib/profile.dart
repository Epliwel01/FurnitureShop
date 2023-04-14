import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  Widget Menu3(String img, String label, int color, String img2, String label2,
      int color2) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 140,
                height: 175,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 0.1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color(color)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(img))),
                    ),
                    Spacer(),
                    Text(
                      label,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(20),
                width: 140,
                height: 175,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 0.1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color(color2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(img2))),
                    ),
                    Spacer(),
                    Text(
                      label2,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("assets/images/wahyu.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Wahyu Rahmat Firdaus",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color.fromARGB(255, 3, 3, 3),
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "Mahastudent",
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Color.fromARGB(255, 126, 125, 125),
                  fontWeight: FontWeight.normal),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 80),
          width: double.infinity,
          height: 40,
          color: Color.fromARGB(255, 247, 247, 247),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "24 Collection",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal),
              ),
              Spacer(),
              Text(
                "12 Favorite",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Color.fromARGB(255, 126, 125, 125),
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Menu3("assets/images/chairp.png", "Best Chairs", 0xFFFFC6C6,
                "assets/images/lampw.png", "Best Lamps", 0xFFFFFFFF),
            Menu3("assets/images/chairw.png", "Best Chairs", 0xFFFFFFFF,
                "assets/images/potg.png", "Best Lamps", 0xFFA4BDFF),
          ],
        )
      ],
    )));
  }
}
