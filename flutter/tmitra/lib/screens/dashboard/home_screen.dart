import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.courseMapBuilder,
    super.key,
  });

  final WidgetBuilder courseMapBuilder;

  void _openCourse(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: courseMapBuilder),
    );
  }

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6558D3);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Quest',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Ready to build?',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Pick up where you left off.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black54,
                  ),
            ),
            const SizedBox(height: 28),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFEDEAFF),
                          child: Icon(Icons.flutter_dash, color: purple),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Your course',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Flutter App Builder',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    const Text('0 of 8 lessons completed'),
                    const SizedBox(height: 12),
                    const LinearProgressIndicator(
                      value: 0,
                      minHeight: 8,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: purple,
                      backgroundColor: Color(0xFFEDEAFF),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () => _openCourse(context),
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Open course'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.flag_outlined, color: purple),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your next step',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Open the course to start your first lesson.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
