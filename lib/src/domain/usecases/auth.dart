import 'package:caferat_app/src/common/error/failure.dart';
import 'package:caferat_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Auth {
  Auth(this._repository);
  final AuthRepository _repository;

  Future<Either<Failure, AuthResponse>> doLogin(String email, String password) async {
    return await _repository.login(email, password);
  }

  Future<Either<Failure, AuthResponse>> doRegister(
    String email,
    String password,
  ) async {
    return await _repository.register(email, password);
  }

  Future<Either<Failure, void>> doLogout() async {
    return await _repository.logout();
  }
}
