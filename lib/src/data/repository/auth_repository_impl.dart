import 'dart:io';
import 'package:caferat_app/src/common/error/exception.dart';
import 'package:caferat_app/src/common/error/failure.dart';
import 'package:caferat_app/src/data/datasource/remote/auth_remote_datasource.dart';
import 'package:caferat_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.dataSource);
  final AuthRemoteDataSource dataSource;
  @override
  Future<Either<Failure, void>> login(String email, String password) async {
    try {
      final result = await dataSource.login(email, password);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(ConnectionFailure('No internet connection'));
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occured Please try again',
        ),
      );
    }
  }
}
