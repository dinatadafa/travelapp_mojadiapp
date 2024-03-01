import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mojadiapp/alpes.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody(){
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [    
        Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 30, 
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
                  top: 45,
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
                Positioned(
                  top: 30, 
                  right: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 17,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Aspen, USA",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
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
                  top: 94, 
                  left: 28,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    width: size.width * 0.86,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F8FE), 
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Find things to do",
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 165, 
                  left: 28,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    width: size.width * 0.25,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F8FE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Location",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[600],
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 202,
                  left: 150,
                  child: Text(
                    "Hotels",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.withOpacity(0.5),
                      height: 1.2,
                    ),
                  ),
                ),
                Positioned(
                  top: 202,
                  left: 225,
                  child: Text(
                    "Food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.withOpacity(0.5),
                      height: 1.2,
                    ),
                  ),
                ),
                Positioned(
                  top: 202,
                  left: 295,
                  child: Text(
                    "Adventure",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.withOpacity(0.5),
                      height: 1.2,
                    ),
                  ),
                ),
                Positioned(
                  top: 263,
                  left: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Popular",
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
                  top: 268, 
                  right: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "See all",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 305, 
                  left: 28,
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
                            "assets/images/mansion.png",
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 45,
                        left: 20,
                        right: 90,
                        child: Container(
                          height: 30, 
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFF4D5652),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Text(
                            "Alley Palace",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 20,
                        right: 100,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 30, 
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF4D5652),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "4.1",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 162,
                        right: 20,
                        child: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25, 
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.pink[400],
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 305,
                  right: -38,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                          ),
                          child: Image.asset(
                            "assets/images/alpes1.png",
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => AlpesScreen()),
                              );
                            },
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 45,
                        left: 20,
                        right: 70,
                        child: Container(
                          height: 30, 
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFF4D5652),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Text(
                            "Couerdes Alpes",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 20,
                        right: 100,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 30, 
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF4D5652),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "4.5",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 162,
                        right: 20,
                        child: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25, 
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.pink[400],
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 605, 
                  left: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Recommended",
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
                  top: 648, 
                  left: 28,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border(
                            top: BorderSide(color: Colors.grey.shade200, width: 5.0),
                            right: BorderSide(color: Colors.grey.shade200, width: 5.0),
                            left: BorderSide(color: Colors.grey.shade200, width: 5.0),
                            bottom: BorderSide(color: Colors.grey.shade200, width: 50.0), // Atur lebar bawah menjadi lebih lebar
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "assets/images/explore1.png",
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 50,
                        bottom: 15, 
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            "Explore Aspen",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 35,
                        left: 140,
                        right: 0,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 30, 
                              decoration: BoxDecoration(
                                color: Color(0xFF4D5652),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(color: Colors.white, width: 3)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "4N/5D",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 648, 
                  right: -53,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border(
                            top: BorderSide(color: Colors.grey.shade200, width: 5.0),
                            right: BorderSide(color: Colors.grey.shade200, width: 5.0),
                            left: BorderSide(color: Colors.grey.shade200, width: 5.0),
                            bottom: BorderSide(color: Colors.grey.shade200, width: 50.0), // Atur lebar bawah menjadi lebih lebar
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "assets/images/explore2.jpeg",
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 50,
                        bottom: 15, 
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            "Explore Aspen",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 35,
                        left: 140,
                        right: 0,
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 30, 
                              decoration: BoxDecoration(
                                color: Color(0xFF4D5652),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(color: Colors.white, width: 3)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2N/3D",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.theaters),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.blueAccent[700],
      unselectedItemColor: Colors.black,
      backgroundColor: Color(0xffFFFDFA),
    );
  }
}


