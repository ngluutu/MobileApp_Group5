import 'package:flutter/material.dart';
import 'package:flutter_application_1/activity_completed.dart';
import 'package:flutter_application_1/activity_created.dart';
import 'package:flutter_application_1/activity_new.dart';
import 'package:flutter_application_1/activity_running.dart';
import 'package:flutter_application_1/default.dart';
import 'package:flutter_application_1/get_quiz/countdown_widget.dart';
import 'package:flutter_application_1/get_quiz/get_quiz.dart';
import 'package:flutter_application_1/get_quiz/result.dart';
import 'package:flutter_application_1/globals.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/mainscreen.dart';
import 'package:flutter_application_1/myclasses.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/setting.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  isPlayingQuiz = 'assets/db/coar.json';

  testWidgets('find a text in Activity_third Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Activity_third()));

    expect(find.text("You haven't created any game yet!"), findsOneWidget);
  });

  testWidgets('find a text in Activity_second Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Activity_second()));

    expect(find.text("You haven't played any game yet!"), findsOneWidget);
  });

  testWidgets('find a text in ActivityState Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ActivityState()));

    expect(find.text('Created'), findsOneWidget);
  });

  testWidgets('find a text in Activity Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Activity()));

    expect(find.text("You haven't played any game yet!"), findsOneWidget);
  });

  testWidgets('find a text in Default Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePageDefault()));

    expect(find.text("Let's get you started"), findsOneWidget);
  });

  testWidgets('find a text in Setting Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Setting()));

    expect(find.text('Language'), findsOneWidget);
  });

  testWidgets('find a text in Search Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SearchPage()));

    expect(find.text('Grade'), findsOneWidget);
  });

  testWidgets('find a text in MyClasses Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyClasses()));

    expect(find.text("You haven't joined any classes yet"), findsOneWidget);
  });

  testWidgets('find a text in Home Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    expect(find.text("Let's get you started"), findsOneWidget);
  });

  testWidgets('find a text in MainScreen to Activity Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MainScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Activity'));
    await tester.pumpAndSettle();
    expect(find.text('Activity'), findsOneWidget);
  });

  testWidgets('find a text in MainScreen to Search Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MainScreen()));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();
    expect(find.text('Search'), findsOneWidget);
  });

  testWidgets('find a text in Result Widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ResultWidget(3, 5)));

    expect(find.text('Score overview'), findsOneWidget);
  });

  testWidgets('find a text in Countdown Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: CountDownWidget()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Start quiz'));
    await tester.pumpAndSettle();

    expect(find.text('Start quiz'), findsOneWidget);
  });

  testWidgets('find a text in GetQuiz Widget', (WidgetTester tester) async {
    isPlayingQuiz = 'assets/db/coar.json';

    await tester.pumpWidget(const MaterialApp(home: GetQuiz()));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('B')));
    await tester.pumpAndSettle();

    expect(find.byType(TextButton), findsOneWidget);
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
