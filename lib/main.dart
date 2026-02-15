import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/login_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    // bringVegetables(true,onions: 109,rupees: 200); // Moved or removed side-effect
    return MaterialApp(
      theme: ThemeData(
        brightness:Brightness.light,
        primarySwatch: Colors.blue, 
      ),
      darkTheme: ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: "/homepage",
      routes:{
        "/":(context)=> LoginPage(),
        "/login":(context)=> LoginPage(),
        "/homepage":(context)=> HomePage()
      }
    );
  }
  // khali values paass krna required positional 
  // value set krna by default 
  // required mtlb bhejna hi hai positional wale mein bhi bhejna hi hota hai bs order matter krega vahan
  // inside curly braces optional values hoti hai but outside this required values hoti hai 
  void bringVegetables(bool thaila,{required int onions, int rupees = 100}){
    debugPrint("I have $rupees rupees");
    return ;
  }
}
