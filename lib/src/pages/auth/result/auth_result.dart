import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quitanda_app/src/models/user_model.dart';

// Faz parte de outra classe gerada pelo comando: flutter pub run build_runner build
part 'auth_result.freezed.dart';

@freezed
class AuthResult with _$AuthResult {
  factory AuthResult.success(UserModel user) = Success;
  factory AuthResult.error(String message) = Error;
}