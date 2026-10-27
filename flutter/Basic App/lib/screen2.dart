import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Screen3()),
            );
          },
          child: const Text("Go to screen 3"),
        ),
      ),
    );
  }
}
