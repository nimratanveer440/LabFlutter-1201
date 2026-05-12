import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MODEL CLASS
class Subject {
  String time;
  String subjectName;
  String room;

  Subject({required this.time, required this.subjectName, required this.room});
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  // LIST OF SUBJECTS
  List<Subject> subjects = [
    Subject(
      time: "8:00 - 9:30 AM",
      subjectName: "Flutter Development",
      room: "Room 12",
    ),

    Subject(
      time: "9:30 - 10:00 AM",
      subjectName: "Data Science",
      room: "Room 401",
    ),

    Subject(
      time: "10:30 AM - 1:00 PM",
      subjectName: "Parallel Computing",
      room: "Lab 02",
    ),

    Subject(
      time: "2:00 - 2:30 PM",
      subjectName: "Financial Accounting",
      room: "Room 402",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: isDark ? ThemeData.dark() : ThemeData.light(),

      home: Scaffold(
        appBar: AppBar(
          title: Text("My Schedule"),

          actions: [
            IconButton(
              icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),

              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(12.0),

          child: ListView.builder(
            itemCount: subjects.length,

            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                margin: EdgeInsets.only(bottom: 15),

                child: ListTile(
                  title: Text(
                    subjects[index].subjectName,

                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),

                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text("Time: ${subjects[index].time}"),
                      Text("Room: ${subjects[index].room}"),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
