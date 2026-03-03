// // // import 'package:flutter/material.dart';
// // // task1:
// // // void main() {
// // //   runApp(const Mylab2());
// // // }

// // // class Mylab2 extends StatelessWidget {
// // //   const Mylab2({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       home: Scaffold(
// // //         backgroundColor: Colors.blueGrey,
// // //         body: SafeArea(
// // //           // SafeArea added
// // //           child: Center(
// // //             child: Container(
// // //               width: 250,
// // //               height: 250,
// // //               margin: const EdgeInsets.all(25.0), // Margin
// // //               padding: const EdgeInsets.symmetric(
// // //                 vertical: 15.0, // Top & Bottom padding 15
// // //               ),
// // //               decoration: BoxDecoration(
// // //                 color: Colors.white,
// // //                 borderRadius: BorderRadius.circular(10),
// // //               ),
// // //               child: const Center(
// // //                 child: Text(
// // //                   "Safe Container",
// // //                   style: TextStyle(fontSize: 18),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // // task2:
// // void main() {
// //   runApp(const MyLab2());
// // }

// // class MyLab2 extends StatelessWidget {
// //   const MyLab2({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         backgroundColor: Colors.white,
// //         body: SizedBox(
// //           // Container ki jagah SizedBox
// //           width: double.infinity,
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             crossAxisAlignment: CrossAxisAlignment.end,
// //             children: const [
// //               Icon(Icons.favorite, size: 40),
// //               SizedBox(height: 60.0),
// //               Icon(Icons.thumb_up, size: 40),
// //               Icon(Icons.share, size: 40),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// //Task3:

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Task3App());
// }

// class Task3App extends StatelessWidget {
//   const Task3App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Container(
//             height: 150, // Important for stretch effect
//             color: Colors.grey.shade300,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: const [
//                 Icon(Icons.volume_up, size: 40),
//                 Icon(Icons.bluetooth, size: 40),
//                 Icon(Icons.wifi, size: 40),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// task4:
import 'package:flutter/material.dart';

void main() {
  runApp(const Task4App());
}

class Task4App extends StatelessWidget {
  const Task4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Parent Column
          children: [
            //  Header Container
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),

            // 🔹 Exact 20px space
            const SizedBox(height: 20),

            //  Button Row
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, //  Push left & right
              children: [
                //  Red Box (Left)
                Container(
                  height: 60,
                  width: 100,
                  color: Colors.red,
                ),

                //  Green Box (Right)
                Container(
                  height: 60,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
