import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text('Video Preference'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text('Account Settings'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text('Frequently Asked Questions'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text('Log Out'),
            trailing: Icon(Icons.logout),
            onTap: () {
              // Aksi Log Out
            },
          ),
        ],
      ),
    );
  }
}
