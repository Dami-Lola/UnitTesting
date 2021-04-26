import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';


void main (){

  testWidgets("Flutter textField Test",  (WidgetTester tester) async {

    LoginPage loginPage = LoginPage();

    await tester.pumpWidget(MyApp());
    var userName = find.byType(TextField);
    expect(userName, findsWidgets);
    await tester.enterText(userName, 'LolaVola');
    expect(find.text('LolaVola'), findsOneWidget);
    print('LolaVola');
  });
}