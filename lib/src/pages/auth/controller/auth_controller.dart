import 'package:get/get.dart';
import 'package:quitanda_app/src/models/user_model.dart';
import 'package:quitanda_app/src/pages/auth/repository/auth_repository.dart';
import 'package:quitanda_app/src/pages/auth/result/auth_result.dart';
import 'package:quitanda_app/src/pages_routes/app_pages.dart';
import 'package:quitanda_app/src/services/utils_services.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();
  final utilsServices = UtilsServices();

  // Objeto do usuario
  UserModel user = UserModel();

  Future<void> validateToken() async {
    // recuperar o token que foi gerado localmente
    //authRepository.validateToken(token);
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;
    AuthResult result =
        await authRepository.signIn(email: email, password: password);
    isLoading.value = false;

    result.when(
      // Se o usuário tiver sucesso encaminha para página principal
      success: (user) {
       
        this.user = user;
        Get.offAllNamed(PagesRoutes.baseRoute);
      },
      error: (message) {
        utilsServices.showToast(
          message: message,
          isError: true,
        );
      },
    );
  }
}
