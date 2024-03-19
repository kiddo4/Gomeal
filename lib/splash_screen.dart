import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/src/features/Marketplace/pages/Home/Screens/Home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigator() {
    Future.delayed(Duration(milliseconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }
  @override
  void initState() {
    super.initState();
    navigator();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Text(
          'GOmeal',
          style: GoogleFonts.poppins(
            fontSize: 70,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}