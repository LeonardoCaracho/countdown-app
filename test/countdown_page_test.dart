import 'package:countdown/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:countdown/main.dart';

void main() {
  group('CountdownPage', () {
    testWidgets('should properly render the page', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.byType(CountdownPage), findsOneWidget);
      expect(find.byKey(const Key("countdown_display")), findsOneWidget);
      expect(find.byKey(const Key("play_countdown")), findsOneWidget);
    });

    testWidgets('should show start and end time correctly after run countdown', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text('30'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.play_arrow));
      await tester.pumpAndSettle();

      expect(find.text('30'), findsOneWidget);
    });
  });
}
