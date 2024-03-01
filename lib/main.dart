import 'package:flutter/material.dart';
import 'package:mojadiapp/alpes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aspen Travel App Exploration',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF61B296)),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Nunito-Bold'),
          bodySmall: TextStyle(fontFamily: 'Nunito-Light'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const AlpesScreen(),
    );
  }
}