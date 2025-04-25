import 'package:flutter/material.dart';

class AppColors {
  static const Color navyBlue = Color(0xFF102A43); // Consistent with your app
}

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 60,
                    color: AppColors.navyBlue,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello, User!',
                    style: TextStyle(
                      color: AppColors.navyBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: AppColors.navyBlue),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/user'); // Assuming this is home
              },
            ),
            ListTile(
              leading: Icon(Icons.sports_soccer, color: AppColors.navyBlue),
              title: Text('Book Turf'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/booking');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: AppColors.navyBlue),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.redAccent),
              title: Text('Logout', style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/login_screen');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("User Dashboard"),
        backgroundColor: Colors.greenAccent,
        iconTheme: IconThemeData(color: AppColors.navyBlue),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.emoji_people, size: 80, color: AppColors.navyBlue),
            SizedBox(height: 20),
            Text(
              "Welcome, User!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.navyBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
