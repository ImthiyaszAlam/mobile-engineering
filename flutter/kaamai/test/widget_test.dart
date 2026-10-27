// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kaamai/main.dart';

void main() {
  testWidgets('theme toggle switches between light and dark', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    var homeContext = tester.element(find.text('Home Screen'));
    expect(Theme.of(homeContext).brightness, Brightness.light);

    await tester.tap(find.byTooltip('Switch to dark theme'));
    await tester.pumpAndSettle();

    homeContext = tester.element(find.text('Home Screen'));
    expect(Theme.of(homeContext).brightness, Brightness.dark);

    await tester.tap(find.byTooltip('Switch to light theme'));
    await tester.pumpAndSettle();

    homeContext = tester.element(find.text('Home Screen'));
    expect(Theme.of(homeContext).brightness, Brightness.light);
  });
}
