import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String email;
  final String role;

  ProfileScreen({this.email = 'user@example.com', this.role = 'User'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green.shade300,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      email,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Role: $role',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Booking History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Replace with actual booking count
                itemBuilder:
                    (context, index) => Card(
                      child: ListTile(
                        leading: Icon(Icons.calendar_today),
                        title: Text('Turf Booking ${index + 1}'),
                        subtitle: Text(
                          'Date: 2024-04-0${index + 2}, Time: 5:00 PM',
                        ),
                      ),
                    ),
              ),
            ),
            if (role == 'Admin') ...[
              SizedBox(height: 20),
              Divider(),
              Center(
                child: Text(
                  'Admin Access Enabled',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
