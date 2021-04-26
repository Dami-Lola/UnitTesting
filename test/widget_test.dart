// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/counter.dart';
import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Test Todo add text and float button', (WidgetTester tester) async {
    await tester.pumpWidget(TodoList());
    await tester.enterText(find.byType(TextField), 'hi');


    await tester.tap(find.byType(FloatingActionButton));
    // Rebuild the widget with the new item.
    await tester.pump();
    // Expect to find the item on screen.
    expect(find.text('hi'), findsOneWidget);
  });

  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
