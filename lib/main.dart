import 'package:flutter/material.dart';
import 'package:turf_booking_app/utils/app_theme.dart';
import 'package:turf_booking_app/screens/landing_screen.dart';
import 'package:turf_booking_app/screens/login_screen.dart';
import 'package:turf_booking_app/screens/signup_screen.dart';
import 'package:turf_booking_app/screens/user_dashboard.dart';
import 'package:turf_booking_app/screens/admin_dashboard.dart';
import 'package:turf_booking_app/screens/user_booking.dart';
import 'package:turf_booking_app/screens/user_profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TurfBookingApp());
}

class TurfBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Atmosphere Turf',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/user_home': (context) => UserHomeScreen(),
        '/admin_home': (context) => AdminHomeScreen(),
        '/booking': (context) => BookingScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
