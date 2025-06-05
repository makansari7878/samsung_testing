

class LoginFormValidator {

 String? validateEmail(String email){
    if(email == null || email.isEmpty){
      return 'email cannot be empty';
    }

    if(!email.contains('@') || (!email.contains('.'))){
      return 'invalid email';
    }
    return null;
  }


  String? validatePassword(String password){
    if(password == null || password.isEmpty){
      return 'password cannot be empty';
    }

    if(password.length < 6){
      return 'password cant be less than 6 chars';
    }
    return null;

  }
}