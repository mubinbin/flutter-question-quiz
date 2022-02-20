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
    expect(find.text('Blue'), findsOneWidget);
    expect(find.text('Snake'), findsNothing);
    expect(find.text('Purple'), findsNothing);
    expect(find.text('Yellow'), findsOneWidget);
    expect(find.text('Black'), findsOneWidget);
    expect(find.text('Green'), findsOneWidget);
    expect(find.text('Red'), findsOneWidget);
  });

  testWidgets('tapping buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.widgetWithText(ElevatedButton, 'Blue'));
    await tester.pump(); // trigger a frame

    expect(find.text('What is the scariest animal?'), findsOneWidget);
    expect(find.text('Blue'), findsNothing);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Tiger'));
    await tester.pump();

    expect(find.text('What\'s your favorite car?'), findsOneWidget);
    expect(find.text('Snake'), findsNothing);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Mercedes'));
    await tester.pump();

    expect(find.text('What\'s your favorite color?'), findsOneWidget);
    expect(find.text('Mercedes'), findsNothing);
    expect(find.text('Yellow'), findsOneWidget);
  });
}
