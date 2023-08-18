import 'package:quitanda_app/src/models/user_model.dart';
import 'package:quitanda_app/src/services/http_manager.dart';

import '../../../constants/endpoints.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();
  Future signIn({required String email, required String password}) async {
    final result = await _httpManager
        .restRequest(url: Endpoints.signin, method: HttpMethods.post, body: {
      "email": email,
      "password": password,
    });
    if (result['result'] != null) {
      print('SignIn funcionou!');

      final user = UserModel.fromJson(result['result']);
      print(user);
    } else {
      print('SignIn não funcionou!');
      print(result['error']);
    }
  }
}
