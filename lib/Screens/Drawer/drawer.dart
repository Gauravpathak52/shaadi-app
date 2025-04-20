import 'package:flutter/material.dart';
import 'package:gaurav_shaadi/res/image.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text("Johan Deo"),
            accountEmail: Text("johandeo@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(ImagePaths.default_image),
            ),
            otherAccountsPictures: [
              Icon(Icons.edit, color: Colors.white),
            ],
          ),
          ListTile(
            leading: Icon(Icons.flight, color: Colors.purple),
            title: Text('Fly your WAU'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.teal),
            title: Text('Tag Relationship'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard, color: Colors.redAccent),
            title: Text('Send Gift/Flowers'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.restaurant, color: Colors.orange),
            title: Text('Request a Date'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.work, color: Colors.indigo),
            title: Text('Job Portal / Loans / Rent'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.pink),
            title: Text('Kursus Khawin'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event, color: Colors.green),
            title: Text('Engagement & Wedding'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone_android, color: Colors.deepOrange),
            title: Text('Send App Invitations'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.access_time, color: Colors.blueGrey),
            title: Text('Check-In & Monetary Gift'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.timeline, color: Colors.brown),
            title: Text('Moments Timeline'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.ad_units, color: Colors.deepPurple),
            title: Text('Ads & Promotion'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.black),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
