import 'package:flutter/material.dart';
import 'package:tmitra/screens/lesson_screen.dart';

class CourseMapScreen extends StatelessWidget {
  const CourseMapScreen({super.key});

  static const lessons = [
    'Your first Flutter app',
    'Build a screen with widgets',
    'Arrange a responsive layout',
    'Navigate between screens',
    'Create and validate a form',
    'Manage app state',
    'Load data from an API',
    'Build your final app',
  ];

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6558D3);

    return Scaffold(
      appBar: AppBar(title: const Text('Course map')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Flutter App Builder',
            style: Theme.of(context).textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Complete each step to make your way through the course.',
            style: Theme.of(context).textTheme.bodyLarge
                ?.copyWith(color: Colors.black54),
          ),
          const SizedBox(height: 20),
          for (var index = 0; index < lessons.length; index++) ...[
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: CircleAvatar(
                  backgroundColor: index == 0
                      ? const Color(0xFFEDEAFF)
                      : Colors.black12,
                  foregroundColor: index == 0 ? purple : Colors.black54,
                  child: Text('${index + 1}'),
                ),
                title: Text(
                  lessons[index],
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(index == 0 ? 'Ready to start' : 'Locked'),
                trailing: Icon(
                  index == 0 ? Icons.arrow_forward_ios : Icons.lock_outline,
                  size: 18,
                  color: index == 0 ? purple : Colors.black38,
                ),
                enabled: index == 0,
                onTap: index == 0
                    ? () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => LessonScreen(
                              title: lessons[index],
                              lessonNumber: index + 1,
                            ),
                          ),
                        );
                      }
                    : null,
              ),
            ),
            if (index < lessons.length - 1) const SizedBox(height: 8),
          ],
        ],
      ),
    );
  }
}
