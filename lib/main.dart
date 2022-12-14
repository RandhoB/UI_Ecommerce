import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'module/ecommerce_custom/view/ecommerce_custom_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[200],
          appBarTheme: AppBarTheme(
            elevation: 0.6,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.blueGrey[900],
            ),
            titleTextStyle: GoogleFonts.aclonica(
              color: Colors.blueGrey[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showUnselectedLabels: true,
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
          )),
      home: const EcommerceCustomView(),
    );
  }
}
