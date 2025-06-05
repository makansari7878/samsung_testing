import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:samsung_testing/counter.dart';

void main(){

  late Counter counter;
  setUp((){
    counter = Counter();
  });

group('counter testing', (){
  test("when instance of counter class is created, count should be 0",
          (){
        // Arrange
        // Ops
        var result = counter.count;
        // assertion
        expect(result, 0);
      });

  test("testing for increment count ",
          (){
        counter.incrementCounter();
        var res = counter.count;
        expect(res, 1);
      }
  );

  tearDown(() {
    debugPrint(' TEAR DOWN function is executed ');
  });
});


}