import 'package:samsung_testing/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){


      testWidgets("given counter is 0 when the increment button is clicked",
              (tester) async {
                await tester.pumpWidget(
                    MaterialApp(
                          home:  CounterScreen(
                          ),
                    )
                );
                final res =  find.text('count is -- 0');
                expect(res, findsOne);

                final Finder counterTextFinder = find.text('count is -- 0');
                  // Get the actual Text widget instance from the finder result
                final Text counterTextWidget = tester.widget(counterTextFinder);
                  // Assert its style properties
                expect(counterTextWidget.style?.color, Colors.red);
                expect(counterTextWidget.style?.fontSize, 22.0);

                final res1 =  find.text('count is -- 1');
                expect(res1, findsNothing);

                final btn = find.byKey(Key('incKey'));
                await tester.tap(btn);

                await tester.pump(); //forces the widget tree to update and rebuild.
                final btnRes =  find.text('count is -- 1');
                expect(btnRes, findsOneWidget);

                // test whether appbar is present
                expect(find.byType(AppBar), findsOneWidget);

                expect(find.text('count is -- 0'), findsNothing);
                expect(find.text('count is -- 1'), findsOneWidget);
          });
}
