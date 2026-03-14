import 'package:flutter/material.dart';

void main() {
  runApp(const Lab4());
}

class Lab4 extends StatefulWidget {
  const Lab4({super.key});

  @override
  State<Lab4> createState() => _Lab4State();
}

class _Lab4State extends State<Lab4> {
  // Task 6: State Variables
  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile Dashboard"),
          centerTitle: true,
        ),

        // ================= Task 1 =================
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                // ================= Task 2 =================
                Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(10),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ),

                const SizedBox(height: 10),

                // ================= Task 3 =================
                const Text(
                  "Nimra Tanveer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const Text(
                  "Software Engineer",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                const SizedBox(height: 20),

                // ================= Task 4 =================
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 80,
                        color: Colors.blue[200],
                        child: const Text(
                          "About Degree:\n"
                          "Study programming, databases, web and mobile application development and software project management etc.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10), // Task 5 spacing

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 80,
                        color: Colors.green[200],
                        child: const Text(
                          "About Me:\n"
                          "I am a software engineer with experience in mobile and web development. I enjoy learning new technologies and working on innovative projects.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // ================= Task 8 =================
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: const Icon(Icons.star),
                    title: const Text("Score"),
                    subtitle: Text("$score Likes"),
                  ),
                ),

                const SizedBox(height: 10),

                // ================= Task 7 =================
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFollowed = !isFollowed;
                    });
                  },
                  child: Text(isFollowed ? "Following" : "Follow"),
                ),

                IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      score++;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
