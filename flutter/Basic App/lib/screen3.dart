import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen 3")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Screen4()),
            );
          },
          child: Text("Go to Screen 4"),
        ),
      ),
    );
  }
}
