import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final String name;
  final String size;

  ConfirmationScreen({required this.name, required this.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Order")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Customer: $name", style: TextStyle(fontSize: 18)),
            Text("Pizza Size: $size", style: TextStyle(fontSize: 18)),

            SizedBox(height: 30),

            ElevatedButton(
              child: Text("Confirm"),
              onPressed: () {
                Navigator.pop(context, true); // send back true
              },
            ),
          ],
        ),
      ),
    );
  }
}
