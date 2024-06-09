String? validatePhone(String phone) {
  String pattern = r'(^(09)[0-9]{9}$)';
  RegExp regExp = RegExp(pattern);
  if (phone.isEmpty) {
    return 'Please enter phone number';
  }
  else if (!regExp.hasMatch(phone)) {
    return 'Please enter valid phone number';
  }
  return null;
}

String? validateEmail(String email) {
  String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  RegExp regExp = RegExp(pattern);
  if (email.isEmpty) {
    return 'Please enter e-mail';
  }
  else if (!regExp.hasMatch(email)) {
    return 'Please enter valid email';
  }
  return null;
}

String? validatePassword(String password) {
  if (password.isEmpty) {
    return 'Please enter password';
  }
  else if(password.length<6) {
    return "Please enter valid password";
  }
  return null;
}