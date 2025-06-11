import 'package:caferat_app/src/common/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> login(String email, String password);
}