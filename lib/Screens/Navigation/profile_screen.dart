import 'package:flutter/material.dart';
import 'package:gaurav_shaadi/res/image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(ImagePaths.default_image),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'johan deo',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'johan@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                _buildOption(Icons.edit, 'Edit Profile', () {}),
                _buildOption(Icons.lock, 'Change Password', () {}),
                _buildOption(Icons.notifications, 'Notifications', () {}),
                _buildOption(Icons.help_outline, 'Help & Support', () {}),
                _buildOption(Icons.logout, 'Logout', () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.deepOrange),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: onTap,
        ),
        const Divider(height: 1),
      ],
    );
  }
}
