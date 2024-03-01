import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlpesScreen extends StatefulWidget {
  const AlpesScreen({super.key});

  @override
  State<AlpesScreen> createState() => _AlpesScreenState();
}

class _AlpesScreenState extends State<AlpesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold( 
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
        color: Colors.white,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 80, // Adjust this value to position the Row
                right: 28,
                child: Stack(
                  children: [
                    ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                        ),
                        child: Image.asset(
                          "assets/images/alpes2.png",
                          height: 370,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 375,
                left: 35,
                child: Text(
                  "Couerdes Alpes",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 345,
                left: 35,
                child: Row(
                  children: [
                    Container(
                      height: 30, 
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.5 (355 Reviews)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 260,
                left: 35,
                child: Text(
                  "Aspen is as close as one can get to a storybook\nalpine town in America. The choose-your-own-\nadventure possibilities—skiing, hiking, dining,\nshopping and ....",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 379, // Adjust this value to position the Row
                right: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Show map",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 415,
                right: 55,
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red[400],
                            size: 34,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 232, // Adjust this value to position the Row
                left: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "Read more",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 185, // Adjust this value to position the Row
                left: 34,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Facilities",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 45, // Sesuaikan nilai ini untuk menyesuaikan posisi Row
                left: 28,
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  width: size.width * 0.21,
                  height: 105,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F8FE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 13),
                      Icon(
                        Icons.wifi,
                        color: Colors.grey,
                        size: 40,
                      ),
                      TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "1 Heater",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 45, // Sesuaikan nilai ini untuk menyesuaikan posisi Row
                left: 120,
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  width: size.width * 0.21,
                  height: 105,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F8FE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 13),
                      Icon(
                        Icons.dinner_dining,
                        color: Colors.grey,
                        size: 40,
                      ),
                      TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "Dinner",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 45, // Sesuaikan nilai ini untuk menyesuaikan posisi Row
                left: 212,
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  width: size.width * 0.21,
                  height: 105,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F8FE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 13),
                      Icon(
                        Icons.hot_tub,
                        color: Colors.grey,
                        size: 40,
                      ),
                      TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "1 Tub",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 45, // Sesuaikan nilai ini untuk menyesuaikan posisi Row
                left: 304,
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  width: size.width * 0.21,
                  height: 105,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F8FE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 13),
                      Icon(
                        Icons.pool,
                        color: Colors.grey,
                        size: 40,
                      ),
                      TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "Pool",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 900, // Adjust this value to position the Row
                left: 28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 95, // Adjust this value to position the Row
                left: 28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Aspen",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        ),
      ),
    );
  }
}