import 'package:caferat_app/src/data/datasource/remote/auth_remote_datasource.dart';
import 'package:caferat_app/src/data/repository/auth_repository_impl.dart';
import 'package:caferat_app/src/domain/repositories/auth_repository.dart';
import 'package:caferat_app/src/domain/usecases/auth.dart';
import 'package:caferat_app/src/presentation/bloc/auth_watcher/auth_watcher_bloc.dart';
import 'package:caferat_app/src/presentation/bloc/login/signin_form_bloc.dart';
import 'package:caferat_app/src/presentation/bloc/register/register_form_bloc.dart';
import 'package:caferat_app/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@InjectableInit()
void init() {
  //TODO: Data sources
  final authRemoteDataSource = AuthRemoteDataSourceImpl();
  locator.registerLazySingleton<AuthRemoteDataSource>(
    () => authRemoteDataSource,
  );

  // Repositories
  final authRepository = AuthRepositoryImpl(locator());
  locator.registerLazySingleton<AuthRepository>(() => authRepository);

  // Use cases
  final auth = Auth(locator());
  locator.registerLazySingleton(() => auth);

  //TODO:  BLoCs
  final authenticatorWatcherBloc = AuthWatcherBloc();
  locator.registerLazySingleton(() => authenticatorWatcherBloc);

  final signInFormBloc = SignInFormBloc(locator());
  locator.registerLazySingleton(() => signInFormBloc);

  final registerFormBloc = RegisterFormBloc(locator());
  locator.registerLazySingleton(() => registerFormBloc);

  final themeCubit = ThemeCubit();
  locator.registerLazySingleton(() => themeCubit);
}
