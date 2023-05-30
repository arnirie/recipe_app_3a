import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinoyrecipies/screens/category_screen.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CategoryScreen(),
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 16,
          ),
          caption: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
