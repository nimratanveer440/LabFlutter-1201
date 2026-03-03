// import 'package:flutter/material.dart';

// //lab3task1:
// void main() {
//   runApp(const Lab3Task1());
// }

// class Lab3Task1 extends StatelessWidget {
//   const Lab3Task1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Lab 3 - Task 1"), centerTitle: true),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // ================= CARD 1 =================
//             Card(
//               color: Colors.lightBlue,
//               elevation: 5,
//               margin: const EdgeInsets.all(10),
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: const [
//                     Icon(Icons.favorite, size: 30, color: Colors.red),
//                     Icon(Icons.star, size: 40, color: Colors.yellow),
//                     Icon(Icons.thumb_up, size: 35, color: Colors.white),
//                   ],
//                 ),
//               ),
//             ),

//             // ================= CARD 2 =================
//             Card(
//               color: Colors.orange,
//               elevation: 10,
//               margin: const EdgeInsets.all(10),
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Column(
//                   children: const [
//                     Icon(Icons.home, size: 30, color: Colors.black),
//                     SizedBox(height: 10),
//                     Icon(Icons.settings, size: 40, color: Colors.white),
//                     SizedBox(height: 10),
//                     Icon(Icons.person, size: 35, color: Colors.blue),
//                   ],
//                 ),
//               ),
//             ),

//             // ================= CARD 3 =================
//             Card(
//               color: Colors.green,
//               elevation: 15,
//               margin: const EdgeInsets.all(10),
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: const [
//                     Icon(Icons.wifi, size: 30, color: Colors.white),
//                     Icon(Icons.bluetooth, size: 40, color: Colors.black),
//                     Icon(Icons.volume_up, size: 35, color: Colors.yellow),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// //lab3task2:
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Task2());
// }

// class Task2 extends StatelessWidget {
//   const Task2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Lab 3 - Task 2"), centerTitle: true),
//         body: Center(
//           child: Container(
//             margin: const EdgeInsets.symmetric(
//               vertical: 50.0,
//               horizontal: 10.0,
//             ), //  External Space

//             padding: const EdgeInsets.all(20.0), // Internal Space

//             color: Colors.lightBlue,

//             child: Container(
//               margin: const EdgeInsets.only(left: 10), // Left only space
//               color: Colors.white,
//               child: const Text(
//                 "Hello,its me Nimra!",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// //lab3task3:
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Profile UI"),
//           actions: [
//             Padding(
//               padding: EdgeInsets.all(8),
//               child: CircleAvatar(
//                 backgroundImage: AssetImage("assets/profile.jpg"),
//                 backgroundColor: Colors.grey,
//                 child: Text(
//                   "My Profile",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Center(
//           child: CircleAvatar(
//             radius: 60,
//             backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
//             backgroundColor: Colors.grey,
//             child: Text(
//               "My Profile",
//               style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//lab3task4:
import 'package:flutter/material.dart';

void main() {
  runApp(lab3task4());
}

class lab3task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card & List Task"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              //  First Card
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text("Nimra"),
                  subtitle: Text("Registration No: 1201"),
                ),
              ),

              SizedBox(height: 20),

              //  Second Card
              Card(
                color: Colors.green[100],
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.green,
                    size: 40,
                  ),
                  title: Text(
                    "Hashir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Registration No: 1169"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
