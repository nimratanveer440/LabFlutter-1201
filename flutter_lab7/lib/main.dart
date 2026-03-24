// // import 'package:flutter/material.dart';
// // import 'dart:math';

// // void main() {
// //   runApp(lab7());
// // }

// // class lab7 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(home: Task1());
// //   }
// // }

// // class Task1 extends StatefulWidget {
// //   @override
// //   _Task1State createState() => _Task1State();
// // }

// // class _Task1State extends State<Task1> {
// //   Color boxColor = Colors.blue;
// //   double radius = 0;

// //   void changeColor() {
// //     setState(() {
// //       boxColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
// //     });
// //   }

// //   void toggleShape() {
// //     setState(() {
// //       radius = radius == 0 ? 100 : 0;
// //     });
// //   }

// //   void resetBox() {
// //     setState(() {
// //       boxColor = Colors.blue;
// //       radius = 0;
// //     });

// //     ScaffoldMessenger.of(
// //       context,
// //     ).showSnackBar(SnackBar(content: Text("Resetting...")));
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text("Gesture Detector ")),
// //       body: Center(
// //         child: GestureDetector(
// //           onTap: changeColor,
// //           onDoubleTap: toggleShape,
// //           onLongPress: resetBox,
// //           child: Container(
// //             width: 200,
// //             height: 200,
// //             decoration: BoxDecoration(
// //               color: boxColor,
// //               borderRadius: BorderRadius.circular(radius),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ==================== Task2 ===================
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(MaterialApp(home: LAB7()));
// }

// class LAB7 extends StatefulWidget {
//   @override
//   State<LAB7> createState() => _LAB7State();
// }

// class _LAB7State extends State<LAB7> {
//   double value = 50; // default value

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sliders")),

//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           //  Value Text
//           Text("Value: ${value.toInt()}"),

//           //  Material Slider
//           Slider(
//             min: 0,
//             max: 100,
//             divisions: 10,
//             value: value,
//             onChanged: (v) {
//               setState(() {
//                 value = v; // update value
//               });
//             },
//           ),

//           //  Cupertino Slider
//           CupertinoSlider(
//             min: 0,
//             max: 100,
//             value: value,
//             onChanged: (v) {
//               setState(() {
//                 value = v;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// ==================== Task3 ===================
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: lab7()));
}

class lab7 extends StatefulWidget {
  @override
  State<lab7> createState() => _lab7State();
}

class _lab7State extends State<lab7> {
  double r = 100;
  double g = 100;
  double b = 100;
  double size = 150;

  @override
  Widget build(BuildContext context) {
    Color c = Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1);

    return Scaffold(
      appBar: AppBar(title: Text("Task 3")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Box
          GestureDetector(
            onHorizontalDragUpdate: (d) {
              setState(() {
                size = size + d.delta.dx; // size change
              });
            },

            onLongPress: () {
              print(c);
            },

            child: Container(width: size, height: size, color: c),
          ),

          // Sliders
          Slider(
            min: 0,
            max: 255,
            value: r,
            onChanged: (v) {
              setState(() {
                r = v;
              });
            },
          ),

          Slider(
            min: 0,
            max: 255,
            value: g,
            onChanged: (v) {
              setState(() {
                g = v;
              });
            },
          ),

          Slider(
            min: 0,
            max: 255,
            value: b,
            onChanged: (v) {
              setState(() {
                b = v;
              });
            },
          ),
        ],
      ),
    );
  }
}
