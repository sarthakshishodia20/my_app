import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const MyHomePage(title: 'Swiggy Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState((){
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: const Color.fromARGB(255, 165, 2, 2),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black54)),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
          IconButton(icon: const Icon(Icons.person),
          onPressed: () {},),
          IconButton(icon: const Icon(Icons.settings),
          onPressed: () {},),
        ],
      bottom: PreferredSize(
    preferredSize: const Size.fromHeight(1),
    child: Container(
      height: 2,
      color: const Color.fromARGB(255, 165, 2, 2), 
    ),
  ),),
      body: Padding(
  padding: const EdgeInsets.only(top: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      const SizedBox(width: 16),
      Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      const SizedBox(width: 16),
      Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.orange.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      const SizedBox(width: 16),
      Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ],
  ),
),


      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
