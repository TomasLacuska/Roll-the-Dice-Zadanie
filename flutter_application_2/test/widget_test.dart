import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_2/main.dart';

void main() {
  testWidgets('Tapping the button shows a dice face', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(Image), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.byType(Image), findsOneWidget);
    expect(find.textContaining('Padlo:'), findsOneWidget);
  });
}
