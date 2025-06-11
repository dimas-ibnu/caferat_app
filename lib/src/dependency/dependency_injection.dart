import 'package:caferat_app/src/data/datasource/remote/auth_remote_datasource.dart';
import 'package:caferat_app/src/data/repository/auth_repository_impl.dart';
import 'package:caferat_app/src/domain/repositories/auth_repository.dart';
import 'package:caferat_app/src/domain/usecases/login.dart';
import 'package:caferat_app/src/presentation/bloc/auth_watcher/auth_watcher_bloc.dart';
import 'package:caferat_app/src/presentation/bloc/signin/signin_form_bloc.dart';
import 'package:caferat_app/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  //TODO: Data sources
  final authRemoteDataSource = AuthRemoteDataSourceImpl();
  locator.registerLazySingleton<AuthRemoteDataSource>(() => authRemoteDataSource);

  // Repositories
  final authRepository = AuthRepositoryImpl(locator());
  locator.registerLazySingleton<AuthRepository>(() => authRepository);

  // Use cases
  final signIn = SignIn(locator());
  locator.registerLazySingleton(() => signIn);

  //TODO:  BLoCs
  final authenticatorWatcherBloc = AuthWatcherBloc();
  locator.registerLazySingleton(() => authenticatorWatcherBloc);

  final signInFormBloc = SignInFormBloc(locator());
  locator.registerLazySingleton(() => signInFormBloc);

  final themeCubit = ThemeCubit();
  locator.registerLazySingleton(() => themeCubit);
}
