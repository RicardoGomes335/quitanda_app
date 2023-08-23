
String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENTIALS': 
    return 'Email e/ou senha invalidas!';

    case 'Invalid session token':
    return 'Token inválido!';

    default: 
    return 'Um erro indefinido ocorreu';
  }
}