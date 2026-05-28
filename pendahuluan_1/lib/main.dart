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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              "Welcome to",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight(800),
                fontSize: 38,
              ),
            ),
            Text("PRAKTIKUM PAB 2026", style: TextStyle(fontSize: 36)),
            SizedBox(height: 60),
            Text(
              "1462400133",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight(600)),
            ),
            SizedBox(height: 50),
            Image.asset("images/confused.png", width: 250),
            SizedBox(height: 50),
            const Text(
              "Muhammad Afrizal Suhartono",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight(600)),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 340,
              height: 60,
              child: TextButton.icon(
                onPressed: () {},
                label: const Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight(500),
                    fontSize: 28,
                  ),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
