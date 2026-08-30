import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EdgeInsets Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const EdgeInsetsDemoPage(),
    );
  }
}

class EdgeInsetsDemoPage extends StatelessWidget {
  const EdgeInsetsDemoPage({super.key});

  //
  static const String lastName = 'Lim';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F1FA),
      appBar: AppBar(
        title: Text('EdgeInsets Demo - $lastName'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. EdgeInsets.all
            Container(
              color: const Color(0xFFF6F1FA),
              padding: const EdgeInsets.all(30),
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'EdgeInsets.all(30)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // 2. EdgeInsets.symmetric
            Container(
              color: const Color(0xFFF6F1FA),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // 3. EdgeInsets.only
            Container(
              color: const Color(0xFFF6F1FA),
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
                right: 5,
                bottom: 20,
              ),
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // 4. EdgeInsets.fromLTRB
            Container(
              color: const Color(0xFFF6F1FA),
              padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
