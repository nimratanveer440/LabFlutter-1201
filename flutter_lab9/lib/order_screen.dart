import 'package:flutter/material.dart';
import 'confirmation_screen.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String name = "";
  String promoCode = "";
  String? errorText;
  String selectedSize = "Small";

  List<String> sizes = ["Small", "Medium", "Large", "Party Size"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SMT Cuisine Order")),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Task 1: TextField (Name)
            TextField(
              decoration: InputDecoration(
                hintText: "Enter customer name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                name = value;
              },
            ),

            SizedBox(height: 20),

            // Task 2: TextFormField (Promo Code + Validation)
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter promo code",
                border: OutlineInputBorder(),
                errorText: errorText,
              ),
              onChanged: (value) {
                setState(() {
                  promoCode = value;

                  if (value.contains(" ")) {
                    errorText = "Don't use blank spaces";
                  } else {
                    errorText = null;
                  }
                });
              },
            ),

            SizedBox(height: 20),

            // Task 3: DropdownButton
            DropdownButton<String>(
              value: selectedSize,
              isExpanded: true,
              items: sizes.map((size) {
                return DropdownMenuItem(value: size, child: Text(size));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSize = value!;
                });
              },
            ),

            SizedBox(height: 30),

            // Task 4: Navigation + Data Passing
            ElevatedButton(
              child: Text("Submit Order"),
              onPressed: () async {
                bool? result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ConfirmationScreen(name: name, size: selectedSize),
                  ),
                );

                if (result == true) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Order Confirmed ✅")));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
