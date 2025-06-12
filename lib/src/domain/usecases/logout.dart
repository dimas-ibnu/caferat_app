import 'package:caferat_app/src/common/error/failure.dart';
import 'package:caferat_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class Logout {
  Logout(this._repository);
  final AuthRepository _repository;

  Future<Either<Failure, void>> execute() async {
    return await _repository.logout();
  }
}
