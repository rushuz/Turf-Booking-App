import 'package:flutter/material.dart';

class AppColors {
  static const Color navyBlue = Color(0xFF102A43);
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.menu, size: 40, color: AppColors.navyBlue),
                SizedBox(width: 12),
                Text(
                  'Navigation Menu',
                  style: TextStyle(
                    color: AppColors.navyBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home, color: AppColors.navyBlue),
                  title: Text('Home'),
                  onTap: () => Navigator.pushReplacementNamed(context, '/'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: AppColors.navyBlue,
                  ),
                  title: Text('Booking'),
                  onTap:
                      () => Navigator.pushReplacementNamed(context, '/booking'),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: AppColors.navyBlue),
                  title: Text('Profile'),
                  onTap:
                      () => Navigator.pushReplacementNamed(context, '/profile'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings,
                    color: AppColors.navyBlue,
                  ),
                  title: Text('Admin Panel'),
                  onTap:
                      () => Navigator.pushReplacementNamed(context, '/admin'),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.redAccent),
              title: Text('Logout', style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
