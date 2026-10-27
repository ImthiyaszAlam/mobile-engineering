import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmitra/main.dart';

void main() {
  testWidgets('bottom navigation opens learning, progress, and profile', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Ready to build?'), findsOneWidget);

    await tester.tap(find.text('Learn'));
    await tester.pumpAndSettle();
    expect(find.text('Course map'), findsOneWidget);

    await tester.tap(find.text('Progress'));
    await tester.pumpAndSettle();
    expect(find.text('Your progress'), findsOneWidget);
    expect(
      find.text(
        'Your completed lessons and learning milestones will appear here.',
      ),
      findsOneWidget,
    );

    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();
    expect(find.text('Your profile'), findsOneWidget);
  });

  testWidgets('home dashboard opens the course map and first lesson', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(800, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Quest'), findsOneWidget);
    expect(find.text('Flutter App Builder'), findsOneWidget);

    await tester.tap(find.text('Open course'));
    await tester.pumpAndSettle();

    expect(find.text('Course map'), findsOneWidget);
    expect(find.text('Your first Flutter app'), findsOneWidget);
    expect(find.text('Ready to start'), findsOneWidget);

    await tester.tap(find.text('Your first Flutter app'));
    await tester.pumpAndSettle();

    expect(find.text('Lesson 1'), findsOneWidget);
    expect(find.text('A minimal app entry point'), findsOneWidget);
    expect(
      find.text(
        'Which function attaches the root widget and starts '
        'displaying the Flutter app?',
      ),
      findsOneWidget,
    );

    await tester.tap(find.text('build()'));
    await tester.pump();
    await tester.tap(find.text('Check answer'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Not quite.'), findsOneWidget);

    await tester.tap(find.text('runApp()'));
    await tester.pump();
    await tester.tap(find.text('Check answer'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Correct!'), findsOneWidget);
    expect(find.text('Finish lesson'), findsOneWidget);

    await tester.tap(find.text('Finish lesson'));
    await tester.pumpAndSettle();
    expect(find.text('Course map'), findsOneWidget);
  });
}
