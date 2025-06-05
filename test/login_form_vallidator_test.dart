import 'package:flutter_test/flutter_test.dart';
import 'package:samsung_testing/login_form_validator.dart';

main(){
  
  late LoginFormValidator loginFormValidator;
  setUp(
          (){
        loginFormValidator = LoginFormValidator();
      }
  );
  group("test cases for Email",
      (){
          test('test case valid emaill id ', (){
            var res = loginFormValidator.validateEmail('mak@gmail.com');
            expect(res, isNull);
            print('Email is valid email');
          });
          test('test case empty emaill id ', (){
            var res = loginFormValidator.validateEmail('');
            expect(res, 'email cannot be empty');
            print('Email cannot be empty');
          });
          
          test('should contain " @', (){
            var res = loginFormValidator.validateEmail('makgmail.com');
            expect(res, 'invalid email');

          });
      }
  );
  
}