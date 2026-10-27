import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({
    required this.title,
    required this.lessonNumber,
    super.key,
  });

  final String title;
  final int lessonNumber;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  static const _answers = ['main()', 'runApp()', 'build()'];
  static const _correctAnswer = 'runApp()';

  String? _selectedAnswer;
  bool _hasCheckedAnswer = false;
  bool _isCorrect = false;

  void _checkAnswer() {
    if (_selectedAnswer == null) return;

    setState(() {
      _hasCheckedAnswer = true;
      _isCorrect = _selectedAnswer == _correctAnswer;
    });
  }

  void _selectAnswer(String answer) {
    setState(() {
      _selectedAnswer = answer;
      _hasCheckedAnswer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6558D3);

    return Scaffold(
      appBar: AppBar(title: Text('Lesson ${widget.lessonNumber}')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'A Flutter app starts in the main() function. It calls runApp(), '
            'which attaches your root widget to the screen.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Text(
            'A minimal app entry point',
            style: Theme.of(context).textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF202033),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const SelectableText(
              'void main() {\n'
              '  runApp(const MyApp());\n'
              '}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'monospace',
                height: 1.6,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Quick challenge',
            style: Theme.of(context).textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Which function attaches the root widget and starts displaying '
            'the Flutter app?',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 12),
          for (final answer in _answers) ...[
            _AnswerOption(
              answer: answer,
              selected: _selectedAnswer == answer,
              onTap: () => _selectAnswer(answer),
            ),
            const SizedBox(height: 8),
          ],
          if (_hasCheckedAnswer) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: _isCorrect
                    ? const Color(0xFFE8F5E9)
                    : const Color(0xFFFFF3E0),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _isCorrect
                    ? 'Correct! runApp() displays the root widget. main() is '
                        'the Dart entry point, and build() describes a widget.'
                    : 'Not quite. main() is the Dart entry point; look for the '
                        'function it calls to display the widget.',
                style: TextStyle(
                  color: _isCorrect
                      ? const Color(0xFF246B2B)
                      : const Color(0xFF8A4B08),
                ),
              ),
            ),
          ],
          const SizedBox(height: 20),
          if (_isCorrect)
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.check),
                label: const Text('Finish lesson'),
              ),
            )
          else
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _selectedAnswer == null ? null : _checkAnswer,
                child: const Text('Check answer'),
              ),
            ),
          const SizedBox(height: 24),
          const Center(
            child: Icon(Icons.flutter_dash, color: purple, size: 28),
          ),
        ],
      ),
    );
  }
}

class _AnswerOption extends StatelessWidget {
  const _AnswerOption({
    required this.answer,
    required this.selected,
    required this.onTap,
  });

  final String answer;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6558D3);

    return Material(
      color: selected ? const Color(0xFFEDEAFF) : Colors.white,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selected ? purple : const Color(0xFFE9E8F2),
            ),
          ),
          child: Row(
            children: [
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: selected ? purple : Colors.black45,
              ),
              const SizedBox(width: 12),
              Text(
                answer,
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
