import 'package:flutter/material.dart';
import 'package:samsung_testing/stateful_color_changing_text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('StatefulColorChangingText golden test - initial blue text color', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: StatefulColorChangingText(
            text: 'Hello Golden!',
            initialTextColor: Colors.greenAccent, // Set initial text color to blue
          ),
        ),
      ),
    );

    // 2. Take a screenshot and compare it to the "golden" image.
    //    This golden file will capture "Hello Golden!" text in blue.
    await expectLater(
      find.byType(StatefulColorChangingText), // Find the widget to screenshot
      matchesGoldenFile('goldens/blue_text_initial.png'),
    );
  });

  // You can add another test for a different initial color, if needed.
  testWidgets('StatefulColorChangingText golden test - initial red text color', (tester) async {
    // 1. Render the Stateful widget with initial red text color
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: StatefulColorChangingText(
            text: 'Hello Golden!',
            initialTextColor: Colors.red, // Set initial text color to red
          ),
        ),
      ),
    );

    // 2. Take a screenshot and compare it to a different "golden" image.
    //    This golden file will capture "Hello Golden!" text in red.
    await expectLater(
      find.byType(StatefulColorChangingText), // Find the widget to screenshot
      matchesGoldenFile('goldens/red_text_initial.png'),
    );
  });
}