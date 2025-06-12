import 'package:caferat_app/src/common/error/failure.dart';
import 'package:caferat_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class Register {
  Register(this._repository);
  final AuthRepository _repository;

  Future<Either<Failure, void>> execute(String email, String password) async {
    return await _repository.register(email, password);
  }
}
