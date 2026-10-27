import 'package:flutter/material.dart';
import 'package:flutter_application_1/DetailScren.dart';

class StateLearning extends StatelessWidget {
  const StateLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return const CounterScreen();
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Learning State")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count $count"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text("Increase"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Detailscren(count:count)),
                );
              },
              child: const Text("Pass Data"),
            ),
          ],
        ),
      ),
    );
  }
}
