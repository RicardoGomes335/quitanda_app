
String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENTIALS': 
    return 'Email e/ou senha invalidas!';

    default: 
    return 'Um erro indefinido ocorreu';
  }
}