// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app/homepage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {

  testWidgets("Change Text Button Test", (WidgetTester tester) async {

    final randText = find.byWidget(Text('We are here for the win'));

    final registerBtn = find.byKey(ValueKey('ChangeText'));

    await tester.pumpWidget(MaterialApp(home: HomePage()));
    await tester.tap(registerBtn);

    expect(find.text('We are here for the win'), findsOneWidget);
  });

}
