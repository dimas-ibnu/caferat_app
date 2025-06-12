import 'package:caferat_app/src/common/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> login(String email, String password);
  Future<Either<Failure, AuthResponse>> register(String email, String password);
  Future<Either<Failure, void>> logout();
}