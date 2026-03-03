import 'package:flutter/material.dart';

void main() {
  runApp(const Lab1App());
}

class Lab1App extends StatelessWidget {
  const Lab1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text("Lab 1 - All Tasks"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //               // // ================= TASK 1 =================
              //               // const SizedBox(height: 20),
              //               // const Text(
              //               //   "Task 1: Simple Text",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // const SizedBox(height: 10),
              //               // const Text("Hello Flutter", style: TextStyle(fontSize: 22)),

              //               // // ================= TASK 2 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 2: Icons in Column",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // const Column(
              //               //   children: [
              //               //     Icon(Icons.home, size: 40),
              //               //     Icon(Icons.star, size: 40),
              //               //     Icon(Icons.settings, size: 40),
              //               //   ],
              //               // ),

              //               // // ================= TASK 3 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 3: Row Alignment",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // Container(
              //               //   height: 100,
              //               //   color: Colors.grey.shade300,
              //               //   child: const Row(
              //               //     mainAxisAlignment: MainAxisAlignment.center,
              //               //     crossAxisAlignment: CrossAxisAlignment.stretch,
              //               //     children: [
              //               //       Icon(Icons.volume_up),
              //               //       Icon(Icons.bluetooth),
              //               //       Icon(Icons.wifi),
              //               //     ],
              //               //   ),
              //               // ),

              //               // // ================= TASK 4 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 4: Status Panel",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // Container(
              //               //   height: 100,
              //               //   width: double.infinity,
              //               //   color: Colors.blue,
              //               // ),
              //               // const SizedBox(height: 20),
              //               // Row(
              //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               //   children: [
              //               //     Container(height: 60, width: 100, color: Colors.red),
              //               //     Container(height: 60, width: 100, color: Colors.green),
              //               //   ],
              //               // ),

              //               // // ================= TASK 5 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 5: Name in Center",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // const SizedBox(height: 10),
              //               // const Text("Nimra Asad", style: TextStyle(fontSize: 22)),

              //               // // ================= TASK 6 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 6: Row inside Column",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // Row(
              //               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               //   children: const [Icon(Icons.home), Icon(Icons.star)],
              //               // ),

              //               // ================= TASK 7 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 7: SizedBox Spacing",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // const Text("Top Text"),
              //               // const SizedBox(height: 20),
              //               // const Text("Bottom Text"),

              //               // // ================= TASK 8 =================
              //               // const SizedBox(height: 30),
              //               // const Text(
              //               //   "Task 8: Assets Image",
              //               //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               // ),
              //               // const SizedBox(height: 10),
              //               // const Image(image: AssetImage("assets/myimage.jpg"), width: 200),

              //               // ================= TASK 9 =================
              //               const SizedBox(height: 30),
              //               const Text(
              //                 "Task 9: Network Image",
              //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(height: 10),
              //               Image.network(
              //                 "https://media.istockphoto.com/id/533292615/photo/alley-in-snowy-morning.jpg",
              //                 width: 200,
              //               ),

              // ================= TASK 10 =================
              const SizedBox(height: 30),
              const Text(
                "Task 10: Final Layout",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Icon(Icons.favorite, size: 40),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
