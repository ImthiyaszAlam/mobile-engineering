// ignore: file_names
import 'dart:ui';

import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                "Learn Style",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  letterSpacing: 1,
                ),
              ),
            ),

            const SizedBox(height: 8),

            Container(
              child: const Text(
                "Second TV",
                style: TextStyle(
                  fontSize: 14,
                  backgroundColor: Colors.blue,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 8),

            Container(
              child: ElevatedButton(onPressed: () {}, child: Text("Press")),
            ),

            Container(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Outline Btn"),
              ),
            ),

            Container(
              child: const Text(
                "3. Image",
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
            ),

            Container(
              height: 200,
              width: 400,
              color: Colors.lightGreenAccent.shade100,
              child: const Icon(Icons.image, size: 60),
            ),

            const TextField(
              decoration: InputDecoration(
                hintText: "Write",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: Text("Row", style: TextStyle(fontSize: 15)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("A"), Text("B"), Text("C"), Text("D")],
            ),

            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("Card"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
