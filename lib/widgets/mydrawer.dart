import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://images.unsplash.com/photo-1769097137026-c482044ca0fb?w=500&auto=format&fit=crop&q=60";

    return Drawer(
      child: Container(
        color: Colors.blue.shade700,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
              ),
              accountName: const Text(
                "Sarthak",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              accountEmail: const Text(
                "[EMAIL_ADDRESS]",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue.shade200,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),

            const SizedBox(height: 10),

            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(CupertinoIcons.person, color: Colors.white),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(CupertinoIcons.settings, color: Colors.white),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),

            Divider(
              color: Colors.blue.shade300,
              thickness: 1,
            ),

            ListTile(
              leading: Icon(CupertinoIcons.arrow_right_arrow_left_square, color: Colors.white),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
