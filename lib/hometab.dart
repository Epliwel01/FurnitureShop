import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  Widget Menu1(String img, String label) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
      padding: EdgeInsets.all(10),
      height: 75,
      width: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.shade300, spreadRadius: 0.1, blurRadius: 15)
      ], color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover))),
          Spacer(),
          Row(
            children: [
              Text(
                label,
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.normal),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward,
                size: 15,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget menu2(String img, String label, String price, String img2,
      String label2, String price2) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 130),
                width: 165,
                height: 175,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 0.1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    color: Colors.blue),
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.black.withOpacity(0.25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Color.fromARGB(255, 252, 251, 251),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        price,
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Color.fromARGB(255, 253, 252, 252),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(top: 130),
                width: 165,
                height: 175,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 0.1,
                          blurRadius: 15)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(img2), fit: BoxFit.cover),
                    color: Colors.blue),
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.black.withOpacity(0.25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label2,
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Color.fromARGB(255, 252, 251, 251),
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        price2,
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Color.fromARGB(255, 253, 252, 252),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
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
      appBar: AppBar(
        title: Text("Discover"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: 15),
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
        bottom: PreferredSize(
            preferredSize: Size(0, 60),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          hintText: "What are you looking for?",
                          hintStyle: GoogleFonts.poppins(fontSize: 15)),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Category",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Menu1("assets/images/potw.png", "Plant"),
                      Menu1("assets/images/lampw.png", "Lamp"),
                      Menu1("assets/images/chairw.png", "Chair"),
                      Menu1("assets/images/chairw.png", "Chair"),
                      Menu1("assets/images/chairw.png", "Chair")
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hot Item",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    menu2(
                        "assets/images/potr.jpg",
                        "Cactus",
                        "\$34",
                        "assets/images/chairr.jpg",
                        "Traditional Chair",
                        "\$24"),
                    menu2("assets/images/chairr2.jpeg", "Wooden Chair", "\$44",
                        "assets/images/lampr.jpg", "Elegant Lamp", "\$13"),
                    menu2("assets/images/potr2.jpg", "Beach Beatuiful", "\$36",
                        "assets/images/set.jpg", "Architectural", "\$30"),
                    menu2("assets/images/potr.jpg", "Cactus", "\$34",
                        "assets/images/chairr.jpg", "Cactus", "\$34"),
                  ],
                )
                // "assets/images/potr.jpg", "assets/images/chairr.jpg"
              ],
            ),
          ),
        ),
      ),
    );
  }
}
