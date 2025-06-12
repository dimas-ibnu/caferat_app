// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:caferat_app/src/core/app_module.dart' as _i28;
import 'package:caferat_app/src/data/datasource/remote/auth_remote_datasource.dart'
    as _i466;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i454.GoTrueClient>(() => appModule.supabaseAuth);
    gh.factory<_i466.AuthRemoteDataSource>(
      () => _i466.AuthRemoteDataSourceImpl(),
    );
    return this;
  }
}

class _$AppModule extends _i28.AppModule {}
