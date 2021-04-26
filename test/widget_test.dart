// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

void main() {

  testWidgets("Flutter textField Test",  (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var userName = find.byType(TextField);
    expect(userName, findsWidgets);
    await tester.enterText(userName, 'LolaVola');
    expect(find.text('LolaVola'), findsOneWidget);
    print('LolaVola');
  });

  testWidgets("Elevated Button Test", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  });

}
