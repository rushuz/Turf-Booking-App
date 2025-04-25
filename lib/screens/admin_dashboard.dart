import 'package:flutter/material.dart';

class AppColors {
  static const Color navyBlue = Color(0xFF102A43);
}

class AdminHomeScreen extends StatelessWidget {
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
                    Icons.admin_panel_settings,
                    size: 60,
                    color: AppColors.navyBlue,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello, Admin!',
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
                Navigator.pushNamed(context, '/admin');
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month, color: AppColors.navyBlue),
              title: Text('Manage Bookings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/admin'); // Use your manage route
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: AppColors.navyBlue),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/settings',
                ); // Add route as needed
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: AppColors.navyBlue),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/admin_dashboard');
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
        title: Text("Admin Dashboard"),
        backgroundColor: Colors.greenAccent,
        iconTheme: IconThemeData(color: AppColors.navyBlue),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.admin_panel_settings,
              size: 80,
              color: AppColors.navyBlue,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome, Admin!",
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
