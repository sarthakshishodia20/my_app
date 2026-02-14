import 'package:flutter/material.dart';

void main(){
  runApp(const HomePage());
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final days = 30;
  final name = "Sarthak";
  final pi = 3.14159;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Home"),
        actions:[
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.logout)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade400
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Flutter Drawer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),

            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Redirects you to Home Page"),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              subtitle: const Text("Redirects you to Profile Page"),
              onTap: (){
                Navigator.pushNamed(context, "/login");
              },
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              subtitle: Text("Redirects you to Settings Page"),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text("Welcome to this new App"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}