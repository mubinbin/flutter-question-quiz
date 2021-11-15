// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_app/main.dart';

void main() {
  testWidgets('render appBar', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('My first app!'), findsOneWidget);
  });

  testWidgets('render the first question and answers',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('What\'s your favorite color?'), findsOneWidget);
    expect(find.text('What\'s your favorite car?'), findsNothing);
    expect(find.text('Answer 1'), findsOneWidget);
    expect(find.text('Answer 4'), findsNothing);
    expect(find.text('Answer 2'), findsOneWidget);
    expect(find.text('Answer 3'), findsOneWidget);
  });

  testWidgets('tapping buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.widgetWithText(ElevatedButton, 'Answer 1'));
    await tester.tap(find.widgetWithText(ElevatedButton, 'Answer 2'));
    await tester.tap(find.widgetWithText(ElevatedButton, 'Answer 3'));
    expect(find.text('Answer 4'), findsNothing);
  });
}
