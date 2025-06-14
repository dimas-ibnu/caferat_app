import 'dart:io';
import 'package:caferat_app/src/common/error/exception.dart';
import 'package:caferat_app/src/common/error/failure.dart';
import 'package:caferat_app/src/data/datasource/remote/supabase_remote_datasource.dart';
import 'package:caferat_app/src/domain/repositories/supabase_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRepositoryImpl extends SupabaseRepository {
  SupabaseRepositoryImpl(this.dataSource);
  final SupabaseRemoteDatasource dataSource;
  @override
  Future<Either<Failure, void>> login(String email, String password) async {
    try {
      final result = await dataSource.login(email, password);
      return Right(result);
    } on AuthApiException catch (e) {
      return Left(AuthFailure(e.message));
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
