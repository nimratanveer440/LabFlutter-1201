import 'package:flutter/material.dart';

void main() {
  runApp(const Lab6());
}

class Lab6 extends StatefulWidget {
  const Lab6({super.key});

  @override
  State<Lab6> createState() => _Lab6State();
}

class _Lab6State extends State<Lab6> {
  bool isDark = false; // Theme toggle variable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // task 3
      theme: ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),

        // ✅ FIXED Card Theme
        cardTheme: CardThemeData(
          color: isDark ? Colors.grey[800] : Colors.grey[200],
          elevation: 5,
          margin: const EdgeInsets.all(10),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lab 6 - Theme App"),

          //  task 1
          actions: [
            IconButton(
              icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
            ),
          ],
        ),

        //  task2 and task 3
        body: SingleChildScrollView(
          child: Column(
            children: [
              // CARD 1
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "I am Nimra Tanveer, a student of Software Engineering.",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),

              // CARD 2
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "I am currently learning mobile application development using Flutter.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),

              // CARD 3
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "I am a beginner in software development and passionate about programming.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),

              // CARD 4
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "My goal is to become a successful software engineer in the future.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // BUTTON
              ElevatedButton(onPressed: () {}, child: const Text("Click Me")),
            ],
          ),
        ),
      ),
    );
  }
}
