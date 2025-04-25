import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color navyBlue = Color(0xFF102A43); // Deep navy
}

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyBlue, // Fixed the background color
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/turf_logo.png', height: 180),
                    SizedBox(height: 30),
                    Text(
                      'The Atmosphere Turf',
                      style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                          fontSize: 45,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                '© 2025 The Atmosphere Turf',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ), // Changed text color for contrast
              ),
            ),
          ],
        ),
      ),
    );
  }
}
