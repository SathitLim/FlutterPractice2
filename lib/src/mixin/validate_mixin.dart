class ValidateMixin{
  String validateEmail(String value){
    if(value.isEmpty)
      return 'Please enter email.';
    else if(!value.contains('@'))
      return 'Please enter valid email.';
    return null;
  }
  String validatePassword(String value){
    if(value.length < 4)
      return 'Password ทust contain more than 4 characters.';
    return null;
  }
}