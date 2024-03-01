import 'package:flutter/material.dart';
// import 'package:mojadiapp/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //Delay to navigate the screen automatically
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5), (){
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Positioned(
                top: 50,
                child: Image.asset(
                  "assets/images/aspen.jpeg", 
                  width: 675,
                ),
              ),
              Positioned(
                top: 93,
                left: 65,
                child: Text(
                  "Aspen",
                  style: TextStyle(
                    fontFamily: 'Hiatus',
                    fontSize: 116,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 8.5,
                  ),
                ),
              ),
              Positioned(
                top: 640,
                left: 40,
                child: Text(
                  "Plan your",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 675,
                left: 40,
                child: Text(
                  "Luxurious\nVacation",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                width: size.width,
                child: Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        // Action when button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 135, 246),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}