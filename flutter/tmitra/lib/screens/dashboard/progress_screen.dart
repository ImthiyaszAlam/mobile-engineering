import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6558D3);
    const completedLessons = 3;
    const totalLessons = 10;

    final progress = totalLessons == 0 ? 0.0 : completedLessons / totalLessons;
    final percentage = (progress * 100).round();

    return Scaffold(
      appBar: AppBar(title: const Text('Progress')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$completedLessons of $totalLessons lessons completed',
                style: Theme.of(context).textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: progress,
                minHeight: 50,
                borderRadius: BorderRadius.circular(100),
                color: purple,
                backgroundColor: const Color(0xFFEDEAFF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
